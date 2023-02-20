void main(List<String> arguments) {
  //Define type of elements in the list
  List<int> myList = [1, 2, 3];
  print(myList.length);
  final firstElement = myList[0];

  //Final defines types of elements automatically
  final myList2 = [1, 2, 3, 4];
  myList2.add(5);
  print(myList2);

  //Define a list without name
  <int>[1, 2, 3];

  //Define map which will have String keys and Dynamic values
  Map<String, dynamic> myMap = {
    'name': 'John Doe',
    'age': '42',
    'registered': true,
  };
  final name = myMap['name'];
  print(name);

  //Duplicates are ignored in set.
  Set<int> mySet = {1, 2, 3, 3};
  print(mySet); // print {1, 2, 3}


  ///MORE METHODS OF COLLECTIONS///
  
  final names = ['John', 'Jane', 'Matthew'];
  //Returns iterable which doesn't allow to access an element in such way: nameLength[0]
  //Same as List.map in JS
  // final nameLengths = names.map((name) => name.length);
  
  // Converts to a list to avoid the above problem
  final nameLengths = names.map((name) => name.length).toList();
  print(nameLengths[0]);
  
  // Same as filter in JS but needs list conversion
  final nameFilter = names.where((name) => name.length == 4).toList();
  print(nameFilter); //[John, Jane]


  ///////LOOPS/////////

  //for loop same as JS except specifying i's type.
  for (int i = 0; i < nameFilter.length; i ++) {
    print(nameFilter[i]); // John Jane
  }

  //Same as JS for in loop used final instead of const.
  for (final name in nameFilter) {
    print(name); // John Jane
  }

  //Same as JS forEach loop use '=>' and remove '{}' to return something
  nameFilter.forEach((name) => print(name)); //John Jane
  //This will also work
  nameFilter.forEach(print); //John Jane

  //Conditionally returned element.
  bool isSignedIn = true;
  <String>[
    'This is a fake content.',
    isSignedIn ? 'Sign Out' : 'Sign in'
  ];

  //Use for loops to generate elements in a list.
  final x = <String>[
    for (int i = 0; i < 5; i++) i.toString(),
    for (final number in [1, 2, 3]) number.toString()
  ];
  print(x); //[0, 1, 2, 3, 4, 1, 2, 3]

  //Spread operator works same as JS
  final list1 = ['hi', 'there'];
  final list2 = ['what', 'up'];
  final combinedList = <String> [
    ...list1,
    ...list2
  ];
  print(combinedList);
}
