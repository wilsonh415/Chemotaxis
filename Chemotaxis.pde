int x = 250;
int size1 = 15;
Bacteria [] colony;
 void setup()   
 {     
 	size(500,500);
 	background(125);  
 	colony = new Bacteria[50];
 	for(int i = 5; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}

 }
 void draw()   
 {    
	for(int i = 5; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria() {
 		myX = 250;
 		myY = 250;
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
