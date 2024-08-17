class celestialBody{
  PImage texture;
  PShape sphere;
  float turnAngle = 0;
  float turnSpeed;
  
  celestialBody(String textureFile, float radius, float rotationSpeed) {
    this.texture = loadImage(textureFile);
    this.sphere = createShape(SPHERE, radius);
    this.turnSpeed = rotationSpeed;
    sphere.setTexture(texture);
  }
}
