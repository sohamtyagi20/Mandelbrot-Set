//float aMin = -0.265, aMax = -0.165;
//float bMin = -0.83, bMax = -0.73;

float aMin = -0.265, aMax = -0.145;
float bMin = -0.81, bMax = -0.69;

//float aMin = -2, aMax = 1;
//float bMin = -1.5, bMax = 1.5;

void setup() {
  size(1000, 1000);
  noLoop();
  background(0);
}

void draw() {
  for (float x = 0; x < width; x++) {
    float a = getAVal(x);
    //println(a);
    for (int y = 0; y < 1000; y++) {
      float b = getBVal(y);
      //println(b);

      ComplexNum c = new ComplexNum(a, b);

      ComplexNum z = c;
      //z.printMe();
      int row = 1;
      //println("B loop",z.secAbsVal());
      while (z.secAbsVal() < 2 && row <= 200) {
        z = z.mult(z).add(c);
        //println("l");
        row++;
      }
      if (row >= 200) {
        stroke(z.secAbsVal() * 40);
        rect(x, y, 1, 1);
      } else {
        stroke(row, 3*row, 6*row);
        point(x, y);
      }
    }
  }
}
