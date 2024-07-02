int fact(int f) {
  if (f <= 1) {return(1);
  } else if (f == 1) {return(1);
  } else {
    var result = f;
    f--;
    while (f > 1) {
      result *= f;
      f--;
    }
    return result;
  }
}