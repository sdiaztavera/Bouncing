PImage img; 
PVector pos, vel;
int c = #C6BA5A;

void setup () {
  size(600, 600);
  
  pos = new PVector(300, 300);
  vel = PVector.random2D();
  vel.mult(4.5);
  
  img = loadImage("img01.jpg");
}

void draw () {
  background(#75A8E8);
  
  fill(#C6BA5A);
  ellipse(pos.x, pos.y, 100, 100);
  image(img, pos.x - img.width *0.5, pos.y - img.height * 0.5);
  
  pos.add(vel);
  if (pos.x < 0 || pos.x > width) {
    c = color(random(255), random(255), random(255));
    vel.x *= -1;
  }
  
  if (pos.y < 0 || pos.y > height) {
    c = color(random(255), random(255), random(255));
    vel.y *= -1;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel.mult(4.5);
}
