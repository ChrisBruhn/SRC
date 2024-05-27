class Reading {

  String year;
  double[] value;


  Reading(String[] value) {
    this.value = new double[value.length-1];
    this.year = value[0];
    for (int i=1; i<value.length; i++) {
      this.value[i-1] = Double.parseDouble(value[i]);
    }
  }


  void display() {
    println(year);
    printArray(value);
  }
  
  
  String getYear(){
    return year;
  }
  
  double[] getValue(){
    return value;
  }
  
  double getIndexOf(int i){
    return value[i];
  }
  
  
}
