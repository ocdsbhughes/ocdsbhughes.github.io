//Assign Variables for the cover image and cards
let cover;
let cardArray = [];

//Check if a random card has been drawn
let randCard = -1;

function preload() {
  //Load images
  cover = loadImage('images/AroundTheWorld_Cover.jpg')

  //Assign all cards to an array
  for (let i=0; i<20; i++) {
    if (i<9)
      cardArray[i] = loadImage('./images/AroundTheWorld_Card_0'+(i+1)+'.jpg')
    else
      cardArray[i] = loadImage('./images/AroundTheWorld_Card_'+(i+1)+'.jpg')
   
  }
}

function setup() {
  //Create the canvas
  createCanvas(1200,1000)
}

function draw() {
  // put drawing code here
  //Check if the random card variable was updated. If not, show the cover
  if (randCard===-1) {
    image(cover,0,0);
  }
  //If random was updated, show the card (using array)
  else {
    background(255);
    image(cardArray[randCard],0,0);
  }

  fill(0);
  textSize(32);
  text('CLICK TO GET A RANDOM CARD', 0, 800);
}

//Update the card on mouse press
function mousePressed() {
  randCard = floor(random(cardArray.length));
  print(randCard+"test")
}
