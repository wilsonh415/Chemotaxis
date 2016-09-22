int size1 = 15;
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

 }
 void draw()   
 {    
  	fill(0,255,0);
 	ellipse(myX, myY, size1, size1);
	for(int i = 0; i < colony.length; i++)
 	{
 		colony[i].move();
 		colony[i].show();
 	}

 }  
 class Bacteria    
 {     
 	int myX, myY, myColor;
 	Bacteria() {
 		myX = 0;
 		myY = (int)(Math.random()*500);
 		myColor = (int)(Math.random()*255);
 	}
 }
 void move() {
 	myX = myX + (int)((Math.random()*30)-10);
 }
 void show() {
 fill(0,255,0);
 ellipse(myX, myY, size1, size1);
 }
