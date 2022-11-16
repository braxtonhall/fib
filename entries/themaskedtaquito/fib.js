//p5.js

let fib1 = 0;
let fib2 = 1;
let loopNumber = 1; 
function setup() {
  createCanvas(600, 600);
  frameRate(3);
}

function draw() {
  background(220);
  fill('#'+str(hex(fib2)));
  noStroke();
  rect(50,70,500,500);
  textSize(20);
  text('#'+str(hex(fib2)),53,57);
  fill(0);
  text('Fibonacci ' +str(loopNumber) + ': '+ str(fib2),200,57);
  fib2 = fib1 + fib2;
  fib1 = fib2 - fib1;
  loopNumber +=1;
  if(fib2>420196140727489660){
     noLoop();
     }
}