class Stack<T> {
  final List<T> _list = [];

  // Push an element onto the stack
  void push(T element) {
    _list.add(element);
  }

  // Pop an element off the stack
  T pop() {
    if (_list.isEmpty) {
      throw StateError('Cannot pop from an empty stack.');
    }
    return _list.removeLast();
  }

  // Peek at the top element of the stack
  T peek() {
    if (_list.isEmpty) {
      throw StateError('Cannot peek from an empty stack.');
    }
    return _list.last;
  }

  // Check if the stack is empty
  bool get isEmpty => _list.isEmpty;

  // Check the size of the stack
  int get size => _list.length;

  // Clear the stack
  void clear() {
    _list.clear();
  }
}
