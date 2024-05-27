int[] years = {2000, 2005, 2010, 2015, 2020};
float[] co2Levels = {370.0, 380.5, 390.0, 400.0, 410.5};

void setup() {
  size(800, 600);
  background(255);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  drawGraph();
}

void drawGraph() {
  int margin = 50;
  float graphWidth = width - 2 * margin;
  float graphHeight = height - 2 * margin;

  // Axes
  stroke(0);
  line(margin, margin, margin, height - margin);
  line(margin, height - margin, width - margin, height - margin);

  // Labels
  fill(0);
  textSize(12);
  for (int i = 0; i < years.length; i++) {
    float x = map(years[i], years[0], years[years.length - 1], margin, width - margin);
    text(years[i], x, height - margin + 20);
  }
  for (int i = 350; i <= 420; i += 10) {
    float y = map(i, 350, 420, height - margin, margin);
    text(i + " ppm", margin - 30, y);
  }

  // Data points and lines
  stroke(0, 0, 255);
  strokeWeight(2);
  noFill();
  beginShape();
  for (int i = 0; i < co2Levels.length; i++) {
    float x = map(years[i], years[0], years[years.length - 1], margin, width - margin);
    float y = map(co2Levels[i], 350, 420, height - margin, margin);
    vertex(x, y);
    ellipse(x, y, 5, 5);
  }
  endShape();
}
