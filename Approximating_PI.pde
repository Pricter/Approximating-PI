float r = 200;

int total = 0;
int circle = 0;

double record_pi;

void setup() {
  size(402, 402);
  translate(width/2,height/2);
  background(0);
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(0,0,r*2,r*2);
  rectMode(CENTER);
  rect(0,0,r*2,r*2);
  record_pi = 0;
}

void draw() {
  translate(width/2, height/2);
  
  for(int i = 0; i < 10000; i++) {
    float x = random(-r,r);
    float y = random(-r, r);
    total++;
    
    double d = (double)x * (double)x +(double) y * (double)y;
    if((double)d < (double)r * (double)r) {
      circle++;
      stroke(100, 255, 0, 100);
    } else {
      stroke(0, 100, 255);
    }
    
    strokeWeight(0.01);
    point(x, y);
    
    double pi = (double)4 * ((double)(circle) / (double)total);
    double recordDiff = Math.abs(Math.PI - record_pi);
    double diff = Math.abs(Math.PI - pi);
    if(diff < recordDiff) {
      recordDiff = diff;
      record_pi = pi;
      println(record_pi);
    }
  }
}
