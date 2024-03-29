int sunX = width + 3500;
int moonX = -500;


PImage moon;
PImage sun;

void setup() {
  size(displayWidth, displayHeight);
  noStroke();
  moon = loadImage("moon.png");
  sun = loadImage("sun.png");
  imageMode(CENTER);
}

void draw() {
  background(0);
  fill(255);

  for (int i = 0; i < 1000; i++) {
    float r = random(10);
    ellipse(random(width), random(height), r, r);
  }

  if (moonX < width/2 + 40|| sunX == width/2) {
    sunX -= 50;
    moonX += 50;
  }

  if (dist(mouseX, mouseY, width/2, height/2) < 200) {
    stroke(random(124), random(15), random(250));
    for (int i = 0; i < 100; i++) {
      line(random(width), random(height), random(width), random(height));
    }
  }

  image(sun, sunX, height/2, 1800, 1800);
  image(moon, moonX, height/2, 1300, 1300);
}

void keyPressed() {
  if (key == 's') {
    saveFrame("drawing-####.png");
  }
}
