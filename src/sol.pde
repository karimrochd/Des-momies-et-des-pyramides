void sol(){
  translate(-5000, -10000, -1000);
  pushMatrix();
  //box(taillecube);
  createShape();
  beginShape(QUADS);
  //fill(255);
  texture(texture2);
  noStroke();
  
  vertex(0, 0, 0, 0, 0);
  vertex(0, 20*width, 0, 0, texture0.width);
  vertex(10*width, 20*width, 0, texture0.width, texture0.width);
  vertex(10*width, 0, 0, texture0.width, 0);
  
  
  endShape(QUADS);
  popMatrix();
  
}
