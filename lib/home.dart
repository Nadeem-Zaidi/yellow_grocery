import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_yellow/authentication2/phone_state/phone_auth_cubit.dart';
import 'package:grocery_yellow/authentication2/screens/overlay.dart';
import 'package:grocery_yellow/categories/screens/categories.dart';
import 'package:grocery_yellow/categories/category_bloc/category_bloc.dart';
import 'package:grocery_yellow/connectivity/connectivity_bloc/bloc/connectivity_bloc.dart';
import 'package:grocery_yellow/image_crousal/image_crousal.dart';
import 'package:grocery_yellow/no_internet_overlay.dart';
import 'package:grocery_yellow/side_drawer/side_drawer.dart';

import 'grp/client.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
            listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn && !c.isLoggedIn,
            listener: (context, state) {
              Navigator.of(context).pushReplacementNamed('/signinsignup');
            }),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Yellow Grocery",
            style: Theme.of(context).textTheme.displayLarge,
          ),
          // title: Text(
          // context.read<AuthCubit>().state.userModel.phoneNumber.toString()),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<AuthCubit>().signOut();
                },
                icon: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Crousel(urls: imgUrls),
              ),
              const SizedBox(height: 15),
              BlocProvider(
                create: (_) => CategoryBloc(PS())..add(FetchCategoriesEvents()),
                child: const Categories(),
              ),
            ],
          ),
        ),
        drawer: const SideAppDrawer(),
      ),
    );
  }
}

List<String> imgUrls = [
  "https://www.freepnglogos.com/uploads/vegetables-png/vegetables-download-vegetable-photos-png-image-pngimg-3.png",
  "https://as1.ftcdn.net/v2/jpg/06/21/78/92/1000_F_621789253_XDtxplOL7TvJzTNZDQhuBEBg2BQEWl07.jpg",
  "https://cdn.dribbble.com/users/3713179/screenshots/15080164/surface_book_-_3.png",
  "https://i.pinimg.com/736x/3f/25/fd/3f25fd674b59ed4a7e0cbbde929d9840.jpg",
  "https://pbs.twimg.com/media/EsKLOEyVEAMX8tf.jpg",
];
