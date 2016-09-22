Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   background(0);  
   colony = new Bacteria[35];
   for(int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
   for(int j = 500; j< colony.length; j--) {
     colony[j] = new Bacteria();
   }
   for(int k = 0; k < colony.length; k ++) {
    colony[k] = new Bacteria();
   }
   for(int l = 500; l < colony.length; l--) {
    colony[l] = new Bacteria();
   }
 }
 void draw()   
 {    
   background(0);
  for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
  for(int j = 500; j < colony.length; j--) {
    colony[j].move();
    colony[j].show();
  }
   for(int k = 0; k < colony.length; k ++) {
    colony[k].move();
    colony[k].show();
   }
   for(int l = 500; l < colony.length; l--) {
    colony[l].move();
    colony[l].show();
   }
 }  
 class Bacteria
 {     
   int myX, myY, myColor, myX2, myX3,myY2;
   Bacteria()  {
     myX = 0;
     myY = (int)(Math.random()*500);
     myColor = (int)(Math.random()*255);
     myX2 = 500;
     myX3 = (int)(Math.random()*500);
     myY2 = 0;
   }
 void move() {
   myX = myX + (int)((Math.random()*20)-9);
   if(mousePressed) {
    myX-=7;
   }
   myX2 = myX2 + (int)((Math.random()*20)-11);
   if(mousePressed) {
     myX2+=7;
   }
   myY2 = myY2 + (int)((Math.random()*20)-9);
   if(mousePressed) {
    myY2-=7;
   }

 }
 void show() {
 fill(0,(int)(Math.random()*255),0);
 ellipse(myX, myY, 15, 15);
 fill((int)(Math.random()*255),0,0);
 ellipse(myX2, myY, 15, 15);
 fill(0,0,(int)(Math.random()*255));
 ellipse(myX3, myY2, 15,15);
 fill((int)(Math.random()*255), (int)(Math.random()*255), 0);
 ellipse(myX3, myX2, 15,15);
 }
}
