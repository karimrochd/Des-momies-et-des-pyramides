void pyramid(){
  rotateZ(2*PI/2);
  pushMatrix();
  laby(21, sides21);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(19, sides19);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(17, sides17);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(15, sides15);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(13, sides13);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(11, sides11);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(9, sides9);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(7, sides7);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(5, sides5);
  popMatrix();
  translate(0,0,taillecube);
  pushMatrix();
  laby(3, sides3);
  popMatrix();
  
  translate(0,0,taillecube);
  
  translate(width / 2 -35, height / 2 -35, -500);
  pushMatrix();
  //box(taillecube);
  createShape();
  beginShape(QUADS);
  //fill(255);
  texture(texture0);
  noStroke();
  vertex(0,0,0, 0, 0);
  vertex(0,0+taillecube,0, 0, texture0.width);
  vertex(0,0+taillecube,taillecube, texture0.width, texture0.width);
  vertex(0,0,taillecube, texture0.width, 0);

  vertex(0,0+taillecube,0, 0, 0);
  vertex(0+taillecube,0+taillecube,0, 0, texture0.width);
  vertex(0+taillecube,0+taillecube,taillecube, texture0.width, texture0.width);
  vertex(0,0+taillecube,taillecube, texture0.width, 0);
 
  vertex(0+taillecube,0+taillecube,0, 0, 0);
  vertex(0+taillecube,0,0, 0, texture0.width);
  vertex(0+taillecube,0,taillecube, texture0.width, texture0.width);   
  vertex(0+taillecube,0+taillecube,taillecube, texture0.width, 0);
  
  vertex(0+taillecube,0,0, 0, 0);
  vertex(0,0,0, 0, texture0.width);
  vertex(0,0,taillecube, texture0.width, texture0.width);
  vertex(0+taillecube,0,taillecube, texture0.width, 0);
  
  
  vertex(0,0,0, 0, 0);
  vertex(0,0+taillecube,0, 0, texture0.width);
  vertex(0+taillecube,0+taillecube,0, texture0.width, texture0.width);
  vertex(0+taillecube,0,0, texture0.width, 0);
  
  endShape(QUADS);
  popMatrix();
  //triangle in the top
  /*
  translate(0,0,taillecube);
  
  //translate(width / 2 -35, height / 2 , -500);
  pushMatrix();
  beginShape(TRIANGLES);
  createShape();
  texture(texture0);
  noStroke();
  vertex(0, 0, 0);
  vertex(taillecube, 0, 0);
  vertex(taillecube/2, taillecube/2, taillecube);

  
  vertex(0, 0, 0);
  vertex(0, taillecube, 0);
  vertex(taillecube/2, taillecube/2, taillecube);


  vertex(0, taillecube, 0);
  vertex(taillecube, taillecube, 0);
  vertex(taillecube/2, taillecube/2, taillecube);


  vertex(taillecube, 0, 0);
  vertex(taillecube, taillecube, 0);
  vertex(taillecube/2, taillecube/2, taillecube);
  
  endShape(TRIANGLES);
  popMatrix();
  */
}
