int x = 150;
int x2 = 250;
int x3 = 350;
 void setup()   
 {     
 	size(500,500);
 	background(125); 
 }
 void draw()   
 {    
 	background(125);
 	fill(0,0, 250);
 	ellipse(x, x, 20, 20);
 	x = x + (int)((Math.random()*4)-2);
 	fill(0,170,0);
 	ellipse(x2, x2, 20, 20); 
 	x2= x2 + (int)((Math.random()*4)-2);
 	fill(250,0,0);
 	ellipse(x3, x3, 20, 20);
 	x3 = x3 + (int)((Math.random()*4)-2);
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

 }
 void show() {

 }