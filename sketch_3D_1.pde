import peasy.PeasyCam;

PeasyCam camera;

float x = 0;
float y = 0;
float z = 0;

float w = 0;
float r = 0;
float ž = 0;
float š = 0;

boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;


void setup(){
  size(800, 600, P3D);
  camera = new PeasyCam(this, 500);
}

void draw(){
  background(200);
  translate(x, y , z);
  fill(0);
  box(100);
  mBox1();
}

void mBox1(){
  pushMatrix();
  translate(x , y - 100, z);
  turn1();
  rotateY(w);
  fill(255, 0, 0);
  box(100);
  mBox2();
  popMatrix();
}
  void keyPressed(){
     if (key == 'w')
        a = true;
     if (key == 's')
        b = true;
     if (key == 'e')
        c = true;
     if (key == 'd')
        d = true;
     
   }
  
void keyReleased(){
  if (key == 'w' )
      a = false;
  if (key == 's')
      b = false;
  if (key == 'e')
      c = false;
  if (key == 'd')
      d = false;
}
      
void turn1(){
  if (a == true){
    r = PI/36;
    w += r;
  }
  if (b == true){
    r = PI/36;
    w -= r;
  }
}

void mBox2(){
  pushMatrix();
  turn2();
  translate(x + 100, y, z);
  rotateX(ž);
  fill(0, 255, 0);
  pushMatrix();
  translate(x, y - 50, z);
  box(100, 200, 100);
  popMatrix();
  popMatrix();
}

void turn2(){
  if (c == true){
    š = PI/36;
    ž += r;
  }
  if (d == true){
    š = PI/36;
    ž -= r;
  }
}
  
