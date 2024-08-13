import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:grocery_yellow/models/categories/category.dart' as Category;
import 'package:grocery_yellow/rest_api/api.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashBoardState> {
  DashboardBloc() : super(DashBoardState.initial()) {
    on<FetchSection>((event, emit) async {
      await _fetchSections(emit, event.pageNumber);
    });
  }

  Future<void> _fetchSections(
      Emitter<DashBoardState> emit, int pageNumber) async {
    emit(state.copyWith(isLoading: true));

    try {
      List<Map<String, dynamic>> result = [];

      var response = await dio.get(
        'http://192.168.1.9:3001/grocery/dashboard',
        queryParameters: {
          'pageNumber': pageNumber.toString(),
        },
      );

      if (response.statusCode == 200) {
        // Successful request
        var currentPageStr = response.data['currentPage'].toString();
        var totalPagesStr = response.data['totalpages'].toString();

        try {
          int currentPage = int.parse(currentPageStr);
          int totalPages = int.parse(totalPagesStr);

          for (var i in response.data['data']) {
            if (i['data'] is List) {
              Map<String, dynamic> map = {};
              map["type"] = i['type'];
              map["data"] = i['data'];
              result.add(map);
            } else {
              print("Error: 'data' is not a List in section: $i");
            }
          }

          var dashContent = [...state.dashBoardContent, ...result];
          emit(state.copyWith(
            isLoading: false,
            dashBoardContent: dashContent,
            currentPage: currentPage,
            totalPages: totalPages,
          ));
        } catch (e) {
          print("Error parsing page numbers: $e");
          emit(state.copyWith(
            isLoading: false,
            error: "Invalid page numbers received from server",
          ));
        }
      } else {
        print("Error: Status code is not 200");
        emit(state.copyWith(error: "Something went wrong in loading content"));
      }
    } on DioException catch (dioError) {
      // Handle Dio-specific errors
      if (dioError.response != null) {
        print('DioError Response: ${dioError.response?.data}');
        print('Status Code: ${dioError.response?.statusCode}');
        emit(state.copyWith(error: "Something went wrong in loading content"));
      } else {
        print('DioError Message: ${dioError.message}');
        emit(state.copyWith(error: "Something went wrong in loading content"));
      }
    } catch (e) {
      // Handle other errors
      print('Error: $e');
      emit(state.copyWith(error: "Something went wrong in loading content"));
    }
  }
}
