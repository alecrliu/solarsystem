class Sun extends celestialBody {
  
  Sun(String textureFile, float radius, float rotationSpeed) {
    super(textureFile, radius, rotationSpeed);
  }
  
  void move() {
    turnAngle += turnSpeed;
  }
  
  void draw(){
  beginShape();
  rotateY(turnAngle);
  shape(sphere);
  endShape();
  }
}
