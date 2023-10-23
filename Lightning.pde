float x, y, prevX, prevY;
float inc = 3;
void setup() {
  background(0);
  size(400, 600);
  strokeWeight(2);
  fill(100, 100, 100);
  rect(30, 450, 60, 150);
  rect(120, 300, 40, 300);
  rect(200, 200, 70, 400);
  rect(300, 400, 60, 200);
}
void draw() {
}

void createLightning() {
  x = width/2;
  y = 0;
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while (y <= height) {
    fill(255, 0, 0, 200);
    prevX = x;
    prevY = y;
    x += inc*((int)(Math.random()*3)-1);
    y += inc*((int)(Math.random()*8)-2);
    line(prevX, prevY, x, y);
  }
}

void mouseClicked() {
  createLightning();
}
