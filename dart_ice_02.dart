void main() {
  //Create a new fixed size array called myList1 with five 0's inside, hint, use var for the data type. Then change item 2 to 1, and print it.
  var myList1 = List.filled(5, 0);

  myList1[1] = 1;

  print(myList1);

  //Create a loosely typed growable list called myList2. Add one of every data type into the list (String, number, double, boolean), and print it.
  var myList2 = [];

  myList2.add("hi"); // String
  myList2.add(88); // Integer
  myList2.add(8.188); // Double
  myList2.add(true); // Boolean

  // Print the list
  print(myList2);

  //Insert IGME into myList2 in the second array position, and print it.
  myList2[1] = "IGME";
  print(myList2);

  //Create a new list called myList3 that contains ['item1', 'item2', 'item3'], then add it all into myList2 and print it.
  var myList3 = ['item1', 'item2', 'item3'];
  myList2.add(myList3);
  print(myList2);

  //Create a new list called myList4 that contains [123.4, 'item 6', false] and insert it into the very beginning of myList2 and print it.
  var myList4 = [123.4, 'item 6', false];
  myList2.insert(0, myList4);
  print(myList2);

  //Create a new growable String array called myList5, and add a few items to it and print it.

  //airhead flavors
  var myList5 = [];
  myList5.add("Strawberry");
  myList5.add("Orange");
  myList5.add("Watermelon");
  myList5.add("Grape");
  myList5.add("Cherry");
  myList5.add("Blue Raspberry");
  myList5.add("Mystery");
  print(myList5);

  //Remove the 3rd item from myList5, and print the result.
  myList5.removeAt(2);
  print(myList5);

  //Remove the last item from myList5, and print the result.
  myList5.removeLast();
  print(myList5);

  //Remove items 2 to 5 in myList2, and print the result.
  myList2.removeRange(1, 4);
  print(myList2);
}