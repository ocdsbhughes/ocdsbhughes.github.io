void setup()
{
  size(800,600);
}

void draw()
{
 //Variables are storage containers for information
 //You MUST tell the program WHAT TYPE OF INFORMATION YOU WILL BE STORING
 
 //color (will store a colour in RGB or HEX)
 //RGB
 //color variableName = color(R,G,B);
 //HEX
 //color variableName = color(#RRGGBB);
 
 //Define a color and then set the value
 color backgroundColor;
 backgroundColor = color(126,23,4);
 
 //Change the colour of the background
 background(backgroundColor);
 
 //integers (int)
 //All non-decimal numbers
 
 //Defind and set variables for x,y, size.
 int x = 200;
 int y = 300;
 int size = 200;
 
 ellipse(x,y,size, size);
 ellipse(x,y,size/2, size/2);
 ellipse(x,y,size/4, size/4);
 
 
 
 
  
  
  
}