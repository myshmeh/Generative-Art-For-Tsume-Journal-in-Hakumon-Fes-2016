float angle, len;
void setup(){
  size(640, 480);
  frameRate(60);
  background(20);
  angle = 0.0f;
  len = 150;
}
void draw(){
  background(20);
  translate(width/2, height/2);
  angle += 3.0f;
  for(int i=0; i<10; i++){
    float modAngle = angle + i * 10;
    strokeWeight(1);
    stroke(155,105,155);
    line(getX(modAngle), getY(modAngle), getX2(modAngle), getY2(modAngle));
    strokeWeight(5);
    stroke(255, 205, 255);
    point(getX(modAngle), getY(modAngle));
    point(getX2(modAngle), getY2(modAngle));
  }
}
float getX(float angle_){
  return cos(radians(angle_)) * cos(radians(angle_/4)) * len;
}
float getY(float angle_){
  return sin(radians(angle_)) * len;
}
float getX2(float angle_){
  return cos(radians(angle_+60)) * cos(radians(angle_/2)) * len;
}
float getY2(float angle_){
  return sin(radians(angle_/3)) * len;
}