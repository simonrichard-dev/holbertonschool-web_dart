

String showFunc(int a, int b) {

  int c = a + b;
  int d = a - b;

  int add(int a, int b) { 
    return(c);
  }

  int sub(int a, int b) {
    return(d);
  }

  return('Add ${a} + ${b} = ${c}\nSub ${a} + ${b} = ${d}');
}