void main() {
  // add your new code here.
  helloFunction("hi", 10);

  helloFunction(null, 10);

  printThree(first: "Hello", second: "Fall", third: "Season");
  printThree(second: "Hello");

  addThree(3, 2, 3);
  
  print(joiner());
  
}

void helloFunction(String? a, int b) {
  print("$a, $b");
}

void helloFunction3([String a = "hi", int b = 10]) {
  print("$a, $b");
}

void printThree({String? first, String? second, String? third}) {
  print("$first, $second, $third");
}

//Create a new function called addThree, as the function name implies, pass in 3 int named parameters, add them and print them.
void addThree(int firstNum, int secondNum, int thirdNum) {
  int sumAll = firstNum + secondNum + thirdNum;
  print("$firstNum + $secondNum + $thirdNum = $sumAll ");
}

//#2
String joiner({String? first, String? second, String third = "default", String fourth = "default"}){
  
  List<String> parts = [];
  if(first != null) parts.add(first);
  if(second != null) parts.add(second);
  parts.add(third);
  parts.add(fourth);
  
  
  return parts.join(', ');
  
}

//#3 



