
void draw() {

  background(192);
  if (inLab){
    pushMatrix();
    play();
    popMatrix();
  }else{
    translate(0, 500, 500);
    pushMatrix();
    translate(0, 500, 700);
    notinlab(); 
    popMatrix();
  }
  
}
