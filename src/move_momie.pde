/*
void movemomie(PShape shape){
  int gx = 1;
  int gy = 1;
    
  if (keyCode==37 || keyCode==38 || keyCode==39 || keyCode==40) {
    
    int oldgx = 1;
    int oldgy = 0;
    int alea = floor(random(0, 4)); 
    //println(alea);
    if      (alea==0 && oldgx>0)          gx = -1; 
    else if (alea==1 && oldgy>0)          gy = -1; 
    else if (alea==2 && oldgx<LAB_SIZE-1) gx = +1; 
    else if (alea==3 && oldgy<LAB_SIZE-1) gy = +1; 
    

    if (labyrinthe[gy+oldgy][gx+oldgx] == ' ') {
      int k = gx;
      int m = gy;
      oldgx += gx;
      oldgy += gy;
      println(k);
      println(m);
      shape.translate(k*taillecube, m*taillecube, 0);
    
    }
  }
}
*/
