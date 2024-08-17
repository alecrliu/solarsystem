class Satellite extends Planet{

  Satellite (String textureFile, float radius, float rotationSpeed, float revolutionRadius, float revolutionSpeed, Satellite moon) {
  super(textureFile, radius, rotationSpeed, revolutionRadius, revolutionSpeed, moon);
  }
  
  Satellite (String textureFile, float radius, float rotationSpeed, float revolutionRadius, float revolutionSpeed) {
    super(textureFile, radius, rotationSpeed, revolutionRadius, revolutionSpeed);
  }
  
  void draw(float planetX, float planetZ) {
  pushMatrix();
    if (hasSatellite){
      satellite.move();
      satellite.draw(planetX + x, planetZ + z);
    }
  translate(x + planetX, 0, z + planetZ);
  rotateY(turnAngle);
  shape(sphere);
  popMatrix();
  }
}
