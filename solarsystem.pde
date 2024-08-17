Sun sun;
Satellite moon;
Planet earth;
Planet mars;
PImage stars;


void setup(){
  size(1200, 900, P3D);
  stars = loadImage("stars.jpeg");
  noStroke();
  stars.resize(width, height);
  sun = new Sun("sun.jpeg", 300, 0.001);
  moon = new Satellite("moon.jpeg", 10, 0.002, 80, 0.01);
  earth = new Planet("earth.jpeg", 40, 0.01, 700, 0.005, moon); 
  mars = new Planet("mars.jpeg", 30, 0.008, 1000, 0.004); 
}


void draw(){
  translate(width/2, height/2);
  background(stars);
  sun.move();
  sun.draw();
  earth.move();
  earth.draw();
  mars.move();
  mars.draw();
  camera(-800, -800, -800, width/2, height/2, 0, 0, 1, 0);
}
  
