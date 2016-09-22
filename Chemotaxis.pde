Bacteria [] colony;
 void setup()   
 {     
   size(500,500);
   background(125);  
   colony = new Bacteria[20];
   for(int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   }
   for(int j = 500; j< colony.length; j--) {
     colony[j] = new Bacteria();
   }
 }
 void draw()   
 {    
   background(125);
  for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   }
  for(int j = 500; j < colony.length; j--) {
    colony[j].move();
    colony[j].show();
  }
 }  
 class Bacteria
 {     
   int myX, myY, myColor, myX2;
   Bacteria()  {
     myX = 0;
     myY = (int)(Math.random()*500);
     myColor = (int)(Math.random()*255);
     myX2 = 500;
   }
 void move() {
   myX = myX + (int)((Math.random()*30)-14);
   if(mousePressed) {
    myX = 5;
   }
   myX2 = myX2 + (int)((Math.random()*30)-16);
   if(mousePressed) {
     myX2 = 495;
   }
 }
 void show() {
 fill(0,255,0);
 ellipse(myX, myY, 15, 15);
 fill(255,0,0);
 ellipse(myX2, myY, 15, 15);
 }
}
