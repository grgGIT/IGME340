void main() {
  int myNumber = 1234;
  double myFloat = 1234.6234;
  String myString = "Hello World";
  bool myBoolean = false;
  const myConst = "I don't change";
  final iAmFinal;
  dynamic iAmDynamic;
  var iAmVar;

  // add your new code here.

  iAmFinal = "My Final Offer";

  iAmVar = 12345;
  print(iAmVar);
  iAmVar = "I am String now";
  print(iAmVar);
  //Use interpolation and output myString along with myFloat.
  print("$myString $myFloat");

  //Use interpolation and output myString, but make all the characters uppercase.
  print("${myString.toUpperCase()}");

  //Use interpolation and output both the value of myFloat rounded up and down.
  print("${myFloat.ceilToDouble()} ${myFloat.floorToDouble()}");

  //Use interpolation to print out the number of seconds that have passed since 1970 - use the DateTime library.
  final old = DateTime.utc(1970, DateTime.january);
  final today = DateTime.now();
  final diff = today.difference(old);
print(" ${diff.inSeconds} seconds");
  
  //Print out the absolute value of -999.
  double negativ = -999;
  print("${negativ.abs()}");
  
  //Create a new dynamic variable. Assign it initially to 1234, print it, then assign to "Hello there!", and print it.
  var dynam = "1234";
    print(dynam);
  dynam = "Hello there!";
    print(dynam);
  
  //Create a for loop that prints 0 to 20.
  for(int i = 0; i<=20; i++){
    print(i);
  }
 
  //Perform the same operation as above but using a while loop.
  print("/while loop below/");
  int b = 0;
  while(b<21){
    print(b);
      b++;
  }
  
  print("###/for loop 10 edit below/###");
  
  //Modify both the for loop and while loop and break out of the loop once the counter reaches 10.
  for(int i2 = 0; i2<=10; i2++){
    print(i2);
  }
 
 
  print("/while loop 10 edit below/");
  int b2 = 0;
  while(b2<11){
    print(b2);
      b2++;
  }
}


