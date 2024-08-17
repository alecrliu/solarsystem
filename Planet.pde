class Planet extends celestialBody{

  float orbitSpeed;
  float orbitAngle = 0;
  float radius;
  float x;
  float z;
  boolean hasSatellite = false;
  Satellite satellite;
  
  Planet (String textureFile, float radius, float rotationSpeed, float revolutionRadius, float revolutionSpeed) {
    super(textureFile, radius, rotationSpeed);
    this.radius = revolutionRadius;
    this.orbitSpeed = revolutionSpeed;
    this.x = -revolutionRadius;
    this.z = -revolutionRadius;
  }
  
  Planet (String textureFile, float radius, float rotationSpeed, float revolutionRadius, float revolutionSpeed, Satellite moon) {
    super(textureFile, radius, rotationSpeed);
    this.radius = revolutionRadius;
    this.orbitSpeed = revolutionSpeed;
    this.x = -revolutionRadius;
    this.z = -revolutionRadius;
    this.satellite = moon;
    hasSatellite = true;
  }

  void move() {
  x = radius * cos(orbitAngle);
  z = radius * sin(orbitAngle);
  turnAngle += turnSpeed;
  orbitAngle += orbitSpeed;
  }
  
  void draw() {
  pushMatrix();
    if (hasSatellite){
      satellite.move();
      satellite.draw(x, z);
    }
  translate(x, 0, z);
  rotateY(turnAngle);
  shape(sphere);
  popMatrix();
  }
}
