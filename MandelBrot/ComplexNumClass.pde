class ComplexNum {
  float real;
  float imag;

  ComplexNum(float r, float im) {
    this.real = r;
    this.imag = im;
  }

  void printMe() {
    println(this.real, "+", this.imag+"i");
  }

  float absoluteValue() {
    float z = sqrt(pow(this.real, 2)+pow(this.imag, 2));
    return z;
  }

  float secAbsVal() {
    float z = pow(this.real, 2)+pow(this.imag, 2);
    return z;
  }
  ComplexNum add(ComplexNum a) {
    float newReal = this.real+ a.real;
    float newImag = this.imag + a.imag;
    ComplexNum newCn = new ComplexNum(newReal, newImag);
    return newCn;
  }

  ComplexNum mult(ComplexNum other) {
    //nrp = ac-bd
    //ni0 = ad + bc
    float a = this.real;
    float b = this.imag;
    float c = other.real;
    float d = other.imag;
    float newReal = a*c - b*d;
    float newImag = a*d + b*c;
    ComplexNum newCn = new ComplexNum(newReal, newImag);
    return newCn;
  }
}
