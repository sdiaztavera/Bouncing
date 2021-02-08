
PVector pos, vel;

void setup () {
  size(600, 600);
  
  pos = new PVector(300, 300);
  vel = PVector.random2D();
  vel.mult(4.5);
}

void draw () {
  background(#75A8E8);
  
  fill(#C6BA5A);
  ellipse(pos.x, pos.y, 50, 50);
  
  pos.add(vel);
  if (pos.x < 0 || pos.x > width) {
    vel.x *= -1;
  }
  
  if (pos.y < 0 || pos.y > height) {
    vel.y *= -1;
  }
}

void mousePressed() {
  vel = PVector.random2D();
  vel.mult(4.5);
}
