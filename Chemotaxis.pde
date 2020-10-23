 //declare bacteria variables here  
 // Bacteria bob = new Bacteria(color(255,30,40));
 Bacteria[] colony;
 boolean mouseP = false;
 void setup()   
 {     
   size(500,500); 
   frameRate(30);
   colony = new Bacteria[77];
   for(int i=0; i<colony.length; i++){
    colony[i] = new Bacteria();
   }
 }
 
 void draw()   
 {    
   for(int i=0; i<colony.length; i++)
  {
    colony[i].walk();
   }
   background(0);
   for(int i=0; i<colony.length; i++)
  {
    colony[i].show();
   }
 }
 

 
 class Bacteria    
 {     
   int myX, myY, myColor;
   Bacteria(){
   myX=(int)(Math.random()*100) + 200;
   myY=(int)(Math.random()*100) + 200;
   myColor = color((int)(Math.random()*250), (int)(Math.random()*250), (int)(Math.random()*250), 20);
   }
   
   void walk()
   {
     if(mousePressed)
     {     
       if(mouseX > myX)
        {
         myX= myX + (int)(Math.random()*11)-1;
        }else
        {
         myX= myX + (int)(Math.random()*11)-8;
        }
     
     if(mouseY > myY)
       {
       myY= myY + (int)(Math.random()*11)-1;
       }else 
       {
       myY= myY + (int)(Math.random()*11)-8;
       }
     }else
       {
        myX= myX + (int)(Math.random()*11)-5;
        myY= myY + (int)(Math.random()*11)-5;
       }
     
   }
   void show(){
     noStroke();
     fill(myColor);
     for(int i = 0; i < 20; i++){
     ellipse(myX, myY, 25 - i, 25 - i);
     ellipse(myX, myY, 10, 10);
     }
     
   }
 }  
