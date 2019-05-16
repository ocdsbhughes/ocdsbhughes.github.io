let cover;
let possibleCards;
let cardArray = [];
let randCard = -1;

function preload() {
  cover = loadImage('images/AroundTheWorld_Cover.jpg')
  possibleCards = [
    './images/AroundTheWorld_Card_01.jpg',
    './images/AroundTheWorld_Card_02.jpg',
    './images/AroundTheWorld_Card_03.jpg',
    './images/AroundTheWorld_Card_04.jpg',
    './images/AroundTheWorld_Card_05.jpg',
    './images/AroundTheWorld_Card_06.jpg',
    './images/AroundTheWorld_Card_07.jpg',
    './images/AroundTheWorld_Card_08.jpg',
    './images/AroundTheWorld_Card_09.jpg',
    './images/AroundTheWorld_Card_10.jpg',
    './images/AroundTheWorld_Card_11.jpg',
    './images/AroundTheWorld_Card_12.jpg',
    './images/AroundTheWorld_Card_13.jpg',
    './images/AroundTheWorld_Card_14.jpg',
    './images/AroundTheWorld_Card_15.jpg',
    './images/AroundTheWorld_Card_16.jpg',
    './images/AroundTheWorld_Card_17.jpg',
    './images/AroundTheWorld_Card_18.jpg',
    './images/AroundTheWorld_Card_19.jpg',
    './images/AroundTheWorld_Card_20.jpg',
  ];

  for (let i=0; i<20; i++) {
    cardArray[i] = loadImage(possibleCards[i])
    print('yeh!')
  }




}

function setup() {
  createCanvas(1275,1650)
}

function draw() {
  // put drawing code here
  if (randCard===-1) {
    image(cover,0,0);
  }
  else {
    background(255);
    image(cardArray[randCard],0,0);
  }
}

function mousePressed() {
  randCard = floor(random(possibleCards.length));
  print(randCard+"test")
}
