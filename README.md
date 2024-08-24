# solarsystem
## Instructions:
Watch the animation after running solarsystem.pde.
## Implementation:
Classes:
- The celestial body is a class that provides the base for every other sphere-like object in the solar system
- Sun is a class that models the massive hot sphere in the center of the solar system that everything revolves around
- Planet is a class that allows objects of its type to orbit around the sun with a satellite to accompany them
- Satellite is a class that represents a smaller orbiting body around another planet or satellite

Members:
- Planet has a move() and draw() member
- Satellite inherits Planet's move() but has its own draw() member

Instances:
- Two planets, Earth and Mars, are from the same class but have different sizes, rotation speeds, revolution speeds, number of moons, textures, and revolving radii.

Transformations:
- level 1 is the planets moving and rotating around the sun
- level 2 is the moon rotating around Earth

Bonus functionalities:
1. Textures (full)
- each object in the scene has a texture which was mapped on using setTexture() on the spheres

Solved:
- only one satellite is allowed to be assigned (fixable with an ArrayList of satellites and for loops)
- only a planet or another satellite can have satellites when technically the sun could have them too (fixable by adding satellites to the celestialBody class instead of just the Planets or Satelittes classes)
- code should be simplified by moving everything into the celestialBody class and inheriting from that for all other classes
- lighting from the sun still needs to be implemented
- .obj files were not loading without their required textures
- folders were messing with the finding of files
- most good models were expensive
- lost hours of work after abandoning the helicopter rotor idea
- getting background() to work with a 2D image
- super() and constructors were slightly tedious
- material properties didn't have a large effect
- many null pointer exceptions
- the unit circle for transforming coordinates to a polar revolution
