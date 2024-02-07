class dragonfly{
  
  float x;
  float y;
  float z;
  float eye = 25;
  
  dragonfly(float X1,float Y1,float Z1){
    x = X1;
    y = Y1;
    z = Z1;
  }
  
  void odonata(){
    pushMatrix();
    translate(x-5,y,z);
    fill(100,100,100);
    sphere(eye);
    translate(50,0,0);
    sphere(eye);
    fill(0,255,0);
    translate(-22.5,22.5,-35);
    sphere(45);
    fill(0,200,0);
    translate(0,-20,-55);
    sphere(50);
    pushMatrix();
    pushMatrix();
    fill(200,200,200);
    rotateZ(PI*6/7);
    translate(-190,10,15);
    box(300,5,20);
    translate(5,0,-40);
    box(300,5,20);
    popMatrix();
    rotateZ(PI/7);
    translate(-190,10,15);
    box(300,5,20);
    translate(5,0,-40);
    box(300,5,20);
    popMatrix();
    fill(0,150,0);
    translate(0,-20,-50);
    rotateX(PI*11/6);
    translate(0,0,-190);
    box(20,20,400);
    popMatrix();
  }
  
}
