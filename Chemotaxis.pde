int x = 250;
 void setup()   
 {     
 	size(500,500);
 	background(125);   
 }   
 void draw()   
 {    
 	background(125);
 	fill(0,170,0);
 	ellipse(x, 250, 20, 20); 
 	x = x + (int)((Math.random()*4)-2);
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