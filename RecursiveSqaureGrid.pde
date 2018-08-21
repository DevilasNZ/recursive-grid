float scaleFactor = 0.495;


void setup(){
 size(1000,1000);
 noStroke();
 //noLoop();
}

void draw(){
 recursive(0,0,width, 255);
 delay(500);
}

void recursive(float x, float y, float s, float f){
 //fill(0,int(f),0);
 fill(random(255),random(255),random(255));
 rect(x,y,s,s);
 if(s > 10){
   f -= 5;
  recursive(x,y,s*scaleFactor,f);
  recursive(s-s*scaleFactor+x,y,s*scaleFactor,f);
  recursive(x,s-s*scaleFactor+y,s*scaleFactor,f);
  recursive(s-s*scaleFactor+x,s-s*scaleFactor+y,s*scaleFactor,f);
 }
}