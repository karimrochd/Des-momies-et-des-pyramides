void laby(int LAB_SIZE, char[][][] sides){
  labyrinthe = new char[LAB_SIZE][LAB_SIZE];
  for (int k=0; k<LAB_SIZE; k++){
    for (int m=0; m<LAB_SIZE; m++){
      labyrinthe[k][m]=sides[k][m][4];
    } 
  }
  
  // Variables pour définir la taille et l'espacement des cubes
  
  
  beginShape(QUADS);
  // Déplacer le repère au centre de l'écran
  translate(width / 2, height / 2, -500);
    
  // Déplacer le repère à la position de départ
  translate(-LAB_SIZE * taillecube / 2, -LAB_SIZE * taillecube / 2, 0);
  
  //fermer les entrées et les sorties des autres labyrinths
  if (LAB_SIZE != 21){
    int i =1;
    int j =0;
    pushMatrix();
    translate(i * taillecube,j  * taillecube, 0);
    createShape();
    beginShape(QUADS);
    texture(texture0);
    noStroke();
  
    
    vertex(i+taillecube,j,0, 0, 0);
    vertex(i,j,0, 0, texture0.width);
    vertex(i,j,taillecube, texture0.width, texture0.width);
    vertex(i+taillecube,j,taillecube, texture0.width, 0);
    
    
    endShape(QUADS);
    popMatrix();
  }
  
  // Parcourir le tableau labyrinthe
  for (int j = 0; j < LAB_SIZE; j++) {
    for (int i = 0; i < LAB_SIZE; i++) {
      // Si un # est trouvé, afficher un cube
      if (labyrinthe[j][i] == '#') {
        pushMatrix();
        translate(i * taillecube, j * taillecube, 0);
        //box(taillecube);
        createShape();
        beginShape(QUADS);
        //fill(255);
        texture(texture0);
        noStroke();
      
        vertex(i,j,0, 0, 0);
        vertex(i,j+taillecube,0, 0, texture0.width);
        vertex(i,j+taillecube,taillecube, texture0.width, texture0.width);
        vertex(i,j,taillecube, texture0.width, 0);
      
        vertex(i,j+taillecube,0, 0, 0);
        vertex(i+taillecube,j+taillecube,0, 0, texture0.width);
        vertex(i+taillecube,j+taillecube,taillecube, texture0.width, texture0.width);
        vertex(i,j+taillecube,taillecube, texture0.width, 0);
       
        vertex(i+taillecube,j+taillecube,0, 0, 0);
        vertex(i+taillecube,j,0, 0, texture0.width);
        vertex(i+taillecube,j,taillecube, texture0.width, texture0.width);   
        vertex(i+taillecube,j+taillecube,taillecube, texture0.width, 0);
        
        vertex(i+taillecube,j,0, 0, 0);
        vertex(i,j,0, 0, texture0.width);
        vertex(i,j,taillecube, texture0.width, texture0.width);
        vertex(i+taillecube,j,taillecube, texture0.width, 0);
        
        
        vertex(i,j,0, 0, 0);
        vertex(i,j+taillecube,0, 0, texture0.width);
        vertex(i+taillecube,j+taillecube,0, texture0.width, texture0.width);
        vertex(i+taillecube,j,0, texture0.width, 0);
            
        endShape(QUADS);
        popMatrix();
      }
      else{
        pushMatrix();
        translate(i * taillecube, j * taillecube, 0);
        //box(taillecube);
        createShape();
        beginShape(QUADS);
        //fill(255);
        texture(texture0);
        noStroke();
        
        vertex(i,j,0, 0, 0);
        vertex(i,j+taillecube,0, 0, texture0.width);
        vertex(i+taillecube,j+taillecube,0, texture0.width, texture0.width);
        vertex(i+taillecube,j,0, texture0.width, 0);
        
        
        vertex(i,j,taillecube, 0, 0);
        vertex(i,j+taillecube,taillecube, 0, texture0.width);
        vertex(i+taillecube,j+taillecube,taillecube, texture0.width, texture0.width);
        vertex(i+taillecube,j,taillecube, texture0.width, 0);
        
        endShape(QUADS);
        popMatrix();
      }
      pushMatrix();
      translate(i * taillecube, j * taillecube,0);
      //box(taillecube);
      createShape();
      beginShape(QUADS);
      //fill(255);
      texture(texture0);
      noStroke();
      
      vertex(i,j,taillecube, 0, 0);
      vertex(i,j+taillecube,taillecube, 0, texture0.width);
      vertex(i+taillecube,j+taillecube,taillecube, texture0.width, texture0.width);
      vertex(i+taillecube,j,taillecube, texture0.width, 0);
      
      endShape(QUADS);
      popMatrix();
      
      
    }
  }
  int i =LAB_SIZE-1;
  int j =LAB_SIZE-2;
  pushMatrix();
  translate(i * taillecube,j  * taillecube, 0);
  createShape();
  beginShape(QUADS);
  texture(texture0);
  noStroke();

  
  vertex(i+taillecube,j,0, 0, 0);
  vertex(i+taillecube,j+taillecube,0, 0, texture0.width);
  vertex(i+taillecube,j+taillecube,taillecube, texture0.width, texture0.width);
  vertex(i+taillecube,j,taillecube, texture0.width, 0);
  
  
  endShape(QUADS);
  popMatrix();
  endShape();
}
