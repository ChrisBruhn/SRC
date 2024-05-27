

File rcp26 = new File("rcp2-6.csv");
File rcp45 = new File("rcp4-5.csv");
File rcp85 = new File("rcp8-5.csv");
//File rpc26 = new File("testFile.csv");



void setup() {
  size(1400, 600);
  rcp26.loadFile();
  rcp45.loadFile();
  rcp85.loadFile();
}

void draw() {
  // start år, model nummer og antallet af år frem.
  drawGraph25(1981,1,120);
}

 //<>//

// tegner en søjlediagram med X års data
// start år, model nummer og antallet af år frem.
void drawGraph25(int year, int modelNo, int noOfYears) {
  // laver en horisontal linkje
  line (0,400,width,400);

  for (int i=0; i<noOfYears; i++) {
    // hent data for det valgte år og model
    float y=(float)rcp26.getDataYearModelNo(String.valueOf(i+year), modelNo);
    
   // jeg forstærker værdien ved at gange med 10
    line(50+i*10, 400, 50+i*10, 400-(y*10) );

  }
}
