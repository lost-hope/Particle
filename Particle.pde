class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  int angry =0;
  float lifespan;

  Particle(PVector l, int a) {
    acceleration = new PVector(0, 0.5);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    location = l.get();
    lifespan =255.0;
    angry=a;
  }
    Particle(PVector l) {
    acceleration = new PVector(0, 0.5);
    velocity = new PVector(random(-1, 1), random(-1, 1));
    location = l.get();
    lifespan =255.0;
    
  }

  void run() {
    update();
    display();
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    if(location.x>=width){
    
    }
    lifespan-=1.0;
  }

  void display() {
    stroke(255, lifespan);
    fill (255, lifespan);
    ellipse(location.x, location.y, 8, 8);
  }

  boolean isDead() {
    if (lifespan<0.0) {
      return true;
    } else {
      return false;
    }
  }
  void isAngry(){
   if(angry==1){
     return true;
   }else{
     return false
     
 }
  }
}