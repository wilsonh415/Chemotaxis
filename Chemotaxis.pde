int x = 250;
int size1 = 15;
Bacteria [] colony;
 void setup()   
 {     
 	size(500,500);
 	background(0);  
 	colony = new Bacteria[20];
 	for(int i = 250; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}

 }
 void draw()   
 {    
  	fill(0,255,0);
 	ellipse(x, x, size1, size1);
	for(int i = 250; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria() {
 		myX = (int)(Math.random()*500);
 		myY = (int)(Math.random()*500);
 		myColor = (int)(Math.random()*255);
 	}
 }
 void move() {
 	x = x + (int)((Math.random()*4)-2);
 }
 void show() {
 fill(0,255,0);
 ellipse(x, x, size1, size1);
 }
