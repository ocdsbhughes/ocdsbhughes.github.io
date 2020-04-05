//SET VARIABLES

//SNAKE SETUP
int snakeSize = 1; //Snake blocks
color snakeColor = color(108,1,147); //Snake colour
int dotSize = 10; //Size of each block (both food and snake)
int speedX = 0; //Speed along the X-axis
int speedY = 0; //Speed along the Y-axis
int movement = 10; //Speed increase
int snakeHeadX[] = new int[1011]; //Table for all x-values in the snake
int snakeHeadY[] = new int[1011]; //Table for all y-value in the snake

//FOOD SETUP
int foodX = int(floor(random(29)+1)*10); //Random x-value for the food
int foodY = int(floor(random(29)+1)*10); //Randome y-value for the food
color foodColor = color (255,0,0); //Fill colour for the food

//LOSE CHECK
boolean lose = false; //Set to false to being. Changed to true if you lose





//SETUP
void setup() {
  size(800,600); //Canvas
  frameRate(30); //Slow the frame rate down
  snakeHeadX[0] = 10; //Place the head of the snake (x-value)
  snakeHeadY[0] = 10; //Place the head of the snake (y-value)
  
}
 
//GAME DRAW
void draw() {
  
  //CHECK IF THE USER LOST
  if (lose==true)
  {
    background(255,0,0);
  }
  //OTHERWISE, RUN THE GAME
  else
  {
  background(189,250,252);

  
  //DRAW THE SNAKE
  
  //Get the x and y values for all the block in the snake
  for (int i=snakeSize; i>0; i--)
  {
    snakeHeadX[i] = snakeHeadX[i-1];
    snakeHeadY[i] = snakeHeadY[i-1];
  }
  
  //Move the head
  snakeHeadX[0]+=speedX;
  snakeHeadY[0]+=speedY;
  
  //Draw the blocks
  for (int i=0; i<snakeSize; i++)
  {
    //Check if there's already a block there
    if (get(snakeHeadX[i],snakeHeadY[i])==snakeColor)
    {
      lose=true;
    }
    //Otherwise, draw the block
    else
    {
      rectMode(CENTER);
      noStroke();
      fill(snakeColor);
      rect(snakeHeadX[i],snakeHeadY[i],dotSize,dotSize);
    }
    
  }
  
  //Check edges
  if (snakeHeadX[0]<0 || snakeHeadX[0]>width || snakeHeadY[0]<0 || snakeHeadY[0]>600)
  {
    lose=true;
  }
  
  
  //DRAW FOOD
  noStroke();
  fill(255,0,0);
  rect(foodX,foodY,dotSize,dotSize);
  
  //CHECK IF SNAKE HEAD HITS FOOD  
  if (get(snakeHeadX[0], snakeHeadY[0])== foodColor)
  {
        println("GOT FOOD!");
        //Move the food
        foodX = int(floor(random(width/10-1)+1)*10);
        foodY = int(floor(random(height/10-1)+1)*10);
        //Increase the snake size
        snakeSize++;
  }  
  
     
  }//end else
}//end draw
 
//KEY COMMANDS 
void keyPressed() {
  if (keyCode == LEFT) {
    speedX = -movement;
    speedY=0;
  }
  else if (keyCode == RIGHT) {
    speedX = movement;
    speedY=0;
  }
  else if (keyCode == UP) {
    speedY = -movement;
    speedX=0;
  }
  else if (keyCode == DOWN) {
    speedY = movement;
    speedX=0;
  }
 }
 
 //RESTART THE GAME AFTER LOSS
 void mouseReleased() {
   if (lose==true)
   {
     
     snakeSize=1;
     snakeHeadX[0] = 10;
     snakeHeadY[0] = 10;
     speedX=0;
     speedY=0;
     lose=false;
   }
 }