int LAB_SIZE = 21;
void keyPressed() {
  
  if (key=='l') inLab = !inLab;
  
  
  
  
  
  
  
   if (anim==0 && keyCode==38) {
    if ((posX+dirX>=0 && posX+dirX==LAB_SIZE) || (posY+dirY>=0 && posY+dirY==LAB_SIZE) &&
      labyrinthe[posY+dirY][posX+dirX]!='#') {
      posX = 1;
      posY = -1;

      dirX = 0;
      dirY = 1;
      lvl = lvl-2;
      
      
    }  
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  if (anim==0 && keyCode==38) {
    if (posX+dirX>=0 && posX+dirX<LAB_SIZE && posY+dirY>=0 && posY+dirY<LAB_SIZE &&
      labyrinthe[posY+dirY][posX+dirX]!='#') {
      posX+=dirX; 
      posY+=dirY;
      anim=20;
      animT = true;
      animR = false;
    }  
  }
  if (anim==0 && keyCode==40 && labyrinthe[posY-dirY][posX-dirX]!='#') {
    posX-=dirX; 
    posY-=dirY;
  }
  if (anim==0 && keyCode==37) {
    odirX = dirX;
    odirY = dirY;
    anim = 20;
    int tmp = dirX; 
    dirX=dirY; 
    dirY=-tmp;
    animT = false;
    animR = true;
  }
  if (anim==0 && keyCode==39) {
    odirX = dirX;
    odirY = dirY;
    anim = 20;
    animT = false;
    animR = true;
    int tmp = dirX; 
    dirX=-dirY; 
    dirY=tmp;
  }
}
