 //declare bacteria variables here   
 Bacteria[] colony;
 int x = 250;
 int y = 250;
 void setup()   
 {     
   //initialize bacteria variables here   
   size(500, 500);
   colony = new Bacteria[6];
   int i = 0;
   while (i < colony.length) {
     colony[i] = new Bacteria();
     i++;
   }
 }   
 void draw()   
 {    
   //move and show the bacteria
   stroke(0);
   background(172, 193, 230);
   for (int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
    if (mousePressed == true) {
      x = mouseX;
      y = mouseY;
   }
   fill(96, 186, 95);
   stroke(62, 125, 61);
   ellipse(x, y, 30, 30);
 }  
 class Bacteria    
 {     
   //lots of java!   
   int myX, myY, myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     myColor = color(250, 168, 127);
   }
   void move() {
     if (x > myX) {
       myX = myX + (int)(Math.random()*7)-1;
     } else {
       myX = myX + (int)(Math.random()*7)-5;
     }
     if (y > myY) {
       myY = myY + (int)(Math.random()*7)-1;
     } else {
       myY = myY + (int)(Math.random()*7)-5;
     }
   }
   void show()
   {
   fill(myColor);
   stroke(115, 58, 29);
   triangle(myX+20, myY, myX+40, myY-12.5, myX+40, myY+12.5);
   //body
   ellipse(myX, myY, 50, 37.5);
   //eyes
   fill(0);
   ellipse(myX-10, myY, 5, 5);
   fill(#ffffff);
   noFill();
   //smile
   arc(myX-15, myY+5, 7.5, 7.5, radians(30), radians(150));
   //fin
   arc(myX+2.5, myY+2.5, 7.5, 7.5, radians(45), radians(315));
   }
 }
