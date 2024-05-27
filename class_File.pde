class File { //<>// //<>// //<>// //<>// //<>// //<>//
  String fileName = "";
  Reading[] readings;


  //konstruktor
  File(String fileName) {
    this.fileName=fileName;
  }


  void loadFile() {
    String[] rows = loadStrings(fileName);
    // jeg trækker en fra length fordi der i den første kolonne står årstal.
    readings = new Reading[rows.length-1];
    //insert the numbers from txt file
    // i index nul er der tekst
    for (int i =1; i<rows.length; i++) {
      readings[i-1]=new Reading(splitTokens(rows[i], ","));
    }
  }


  // udskriver alle data
  void showData() {
    for (int i=0; i<readings.length; i++) {
      readings[i].display();
    }
  }

  // udskriver alle data for et år
  double[] showDataYear(String year) {
    int i =0;
    while (!readings[i].year.equals(year)) {
      i++;
    }
    return readings[i].getValue();
  }
  
  
  
  
  // returnerer data for bestemt index i et år
  double getDataYearModelNo(String year, int j) {
    int i =0;
    while (!readings[i].year.equals(year)) {
      i++;
    }
    return readings[i].getIndexOf(j);
  }
  
  
  
}
