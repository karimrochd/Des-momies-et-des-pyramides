
PShape momie;
PShape hand1;
PShape hand2;


//dessiner un rouleau en 3D
PShape rouleau(float size, float ratiodiff, int nbrtour, float diam){
  PShape shape = createShape();
  float noiseScale = 0.40;
  pushMatrix();
  shape.rotateX(PI/2);
  shape.beginShape(QUAD_STRIP);
  for (int i=-1*nbrtour; i<=nbrtour; i++){
    float a = (i/50.0*2*PI)  ;
    float radius=(diam/2) * ((1-ratiodiff)+(ratiodiff*(1-abs(i/(nbrtour*1.0)))));
    shape.noStroke();
    shape.vertex(radius*cos(a), radius*sin(a),0   +a*PI  );
    shape.vertex(radius*cos(a), radius*sin(a),size+a*PI );
    float n = noise(i * noiseScale, a * noiseScale);
    float r = map(n, 0, 1, 81, 141);
    float m = noise(i * noiseScale, a * noiseScale);
    float g = map(m, 0, 1, 88, 128);
    shape.fill(r,g,1,255);
  }
  shape.endShape();
  popMatrix();
  return shape;
}


//dessiner un cylindre creux avec des rainures horizontales.
PShape rouleaum(float size, float ratiodiff, int nbrtour, float diam, float mul){
  PShape shape = createShape();
  float noiseScale = 0.40;
  pushMatrix();
  shape.rotateX(PI/2);
  shape.beginShape(QUAD_STRIP);
  for (int i=-1*nbrtour; i<=nbrtour; i++){
    float a = (i/50.0*2*PI)  ;
    float radius=(diam/2) * ((1-ratiodiff)+(ratiodiff*(1-abs(i/(nbrtour*1.0)))));
    shape.noStroke();
    shape.vertex(radius*cos(a), radius*sin(a),0   +a*PI  );
    shape.vertex(radius*cos(a), radius*sin(a),size+a*PI*mul );
    float n = noise(i * noiseScale, a * noiseScale);
    float r = map(n, 0, 1, 81, 141);
    float m = noise(i * noiseScale, a * noiseScale);
    float g = map(m, 0, 1, 88, 128);
    shape.fill(r,g,1,255);
  }
  shape.endShape();
  popMatrix();
  return shape;
}


// dessiner un bras en 3D
PShape arm(float size, float ratiodiff, int nbrtour, float diam){
  PShape shape = createShape(GROUP);
  pushMatrix();
  PShape bi = rouleau(size, ratiodiff, nbrtour, diam);
  shape.addChild(bi);
  popMatrix();
  pushMatrix();
  PShape ab = rouleau(size, ratiodiff, nbrtour, diam);
  ab.translate(0, size*5, 0);
  shape.addChild(ab);
  popMatrix();
  return shape;
}
//dessiner les deux bras en 3D en prennant en compte la distance entre les bras .
PShape arms(float size, float ratiodiff, int nbrtour, float diam, float dist){
  PShape shape = createShape(GROUP);
  shape.translate(0, 0, -size*8);
  PShape ara = arm(size, ratiodiff, nbrtour, diam);
  shape.addChild(ara);
  PShape arb = arm(size, ratiodiff, nbrtour, diam);
  arb.translate(dist, 0, 0);
  shape.addChild(arb);
  rotateX(PI/2);
  PShape shape2 = mains();
  shape2.translate(0, 240, 120);
  shape2.rotateX(-PI/2);
  
  shape.addChild(shape2);
  return shape;
}

PShape createSphere(float radius, int r) {
  PShape shape = createShape(SPHERE, radius);
  shape.setStroke(false);
  shape.setFill(color(r, r, r));
  return shape;
}

PShape eye() {
  PShape shape = createShape(GROUP);
  int es = 10;

  PShape b = createSphere(es, 255);
  shape.addChild(b);

  PShape n = createSphere(es / 2, 0);
  n.translate(0, 0, (es / 5) * 4);
  shape.addChild(n);

  return shape;
}


//dessiner une tête en 3D.
PShape head(){
  PShape shape = createShape(GROUP);
  PShape rm = rouleaum(30, 1/3.0, 200, 100, 0.3);
  shape.addChild(rm);
  PShape fe = eye();
  fe.translate(20, -30, 40);
  shape.addChild(fe);
  PShape se = eye();
  se.translate(-20, -30, 40);
  shape.addChild(se);
  return shape;
}
//dessiner le corps de la momie  en 3D(un rouleau).
PShape corps(){
  PShape rl = rouleau(30, 1/3.0, 500, 150);
  return rl;
}

//Les mains
PShape mains(){
  PShape shape = createShape(GROUP);
  PShape hadd = createShape(GROUP);
  PShape hdd = hand1;
  hadd.addChild(hdd);
  hadd.scale(6);
  //hadd.translate(40, 0, 0);
  
  shape.addChild(hadd);
  
  
  PShape had = createShape(GROUP);
  PShape hdg = hand2;
  had.addChild(hdg);
  had.scale(6);
  had.translate(30, 0, 0);
  
  shape.addChild(had);
  shape.translate(20, -255, 90);
  return shape;
}


//dessiner une momie(combine toutes les parties de la momie en un seul PShape ).
PShape momie(){
  PShape shape = createShape(GROUP);
  PShape bd = corps();
  shape.addChild(bd);

  
  PShape hd = head();
  hd.translate(0, -270, 0);
  shape.addChild(hd);
  float armSize = 30;
  float armRatiodiff = 1 / 3.0;
  int armNbrtour = 200;
  float armDiam = 60;
  float armDist = 75;
  PShape ars = arms(armSize, armRatiodiff, armNbrtour, armDiam, armDist);
  ars.translate(-30, 130, 400);
  ars.rotateX(PI/2);
  shape.addChild(ars);
  shape.rotateX(-PI/2);
  shape.translate(300, -200, -300);
  return shape;
}
