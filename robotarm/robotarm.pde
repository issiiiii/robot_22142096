float z1 = -100;
float z2 = -80;
float z3 = -60;
float x1 = 100;
float x2 = 80;
float x3 = 60;
float y1 = 100;
float y2 = -800;
float y3 = -800;
float angle1 = 0;
float angle2 = 45.00;
float angle3 = 60.00;
float dif = 1.0;
float dif2 = 0.05;
float t1 = 1580;
float t2 = 0;
float t3 = -400;

dragonfly dragon;
MouseCamera mouseCamera;

void setup(){
  size(800,800,P3D);
  noStroke();
  dragon = new dragonfly(width/2,height/2,0);
  mouseCamera = new MouseCamera(800.8000, 4000, 400, width, height/2, 0, 0, 0, 1, 0);
}

void draw(){
  mouseCamera.update();
  background(255);
  
  pushMatrix();
  fill(70);
  beginShape();
  vertex(1500,200,-250);
  vertex(1500,200,-750);
  vertex(2000,200,-750);
  vertex(2000,200,-250);
  endShape();
  fill(100);
  beginShape();
  vertex(1500,0,-250);
  vertex(1500,200,-250);
  vertex(2000,200,-250);
  vertex(2000,0,-250);
  endShape();
  beginShape();
  vertex(1500,0,-750);
  vertex(1500,200,-750);
  vertex(2000,200,-750);
  vertex(2000,0,-750);
  endShape();
  beginShape();
  vertex(1500,0,-250);
  vertex(1500,200,-250);
  vertex(1500,200,-750);
  vertex(1500,0,-750);
  endShape();
  beginShape();
  vertex(2000,0,-250);
  vertex(2000,200,-250);
  vertex(2000,200,-750);
  vertex(2000,0,-750);
  endShape();
  
  popMatrix();
  
  if(keyPressed){
    if(key == 'f'){
      angle1 = angle1 + dif;
    }
    if(key == 'F'){
      angle1 = angle1 - dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif;
    }
    if(key == 'S'){
      angle2 = angle2 - dif;
    }
    if(key == 't'){
      angle3 = angle3 + dif;
    }
    if(key == 'T'){
      angle3 = angle3 - dif;
    }
    if(key == 'c'){
      if((angle2 > 56.774 || angle3 > 66.452 || angle2 < 0 || angle3 < 0) && t2 > -100){
        angle1 = 0;
        angle2 = 45;
        angle3 = 60;
      }
      if(angle2 < 56.8 && angle3 < 66.45){
        angle1 = angle1*1.01 + dif*5;
        angle2 = angle2 + dif*dif2;
        angle3 = angle3 + dif*dif2*129/236;
      }
      if(angle1 > 4733){
        angle2 = 90;
        angle3 = 0;
        t1 = 1600;
        t2 = -300;
        t3 = -900;
      }
    }
    if(key == 'r'){
      angle1 = 0;
      angle2 = 45;
      angle3 = 60;
      t1 = 1580;
      t2 = 0;
      t3 = -400;
    }
    
  }
    
  pushMatrix();
  
  translate(width/12,height/2,0);
  rotateX(radians(angle1));
  fill(10,10,10);
  box(x1,y1,z1);
  
  translate(0,0,0);
  rotateZ(radians(angle2));
  translate(0,y1/2+y2/2,0);
  fill(100,100,100);
  box(x2,y2,z2);
  
  translate(0,x3/2+y2/2,0);
  rotateZ(radians(angle3));
  translate(0,x3/2+y3/2,0);
  fill(200,200,200);
  box(x3,y3,z3);
  translate(0,y3/2+5,0);
  fill(255,0,0);
  box(x3,10,z3);
  
  popMatrix();
  
  translate(t1,t2,t3);
  rotateY(PI*3/2);
  dragon.odonata();
  
}

void mousePressed() {
    mouseCamera.mousePressed();
}
void mouseDragged() {
    mouseCamera.mouseDragged();
}
void mouseWheel(MouseEvent event) {
    mouseCamera.mouseWheel(event);
}
  
  
