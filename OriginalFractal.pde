int frSize = 600;
boolean randomColorMode = true;
void setup(){
  size(500,500);
  background(155);
  rectMode(CENTER);
  fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
}

public void keyPressed(){
  
  
  if(key == 'a'){
    background(155);
    if (randomColorMode){
       fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
    }
    else {
      noFill();
    }
    fractal(250,250,frSize);
  }
   if(key == 's'){
     background(155);
    if (randomColorMode){
       fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
    }
    else {
      noFill();
    }
    pushMatrix();
  translate(250,-250/2 +21);
  rotate(PI/4);
  //fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
  fractal(250,250,450);
  popMatrix();
  }
   if(key == 'd'){
     background(155);
    if (randomColorMode){
       fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
    }
    else {
      noFill();
    }
    fractal(250,250,600);
  pushMatrix();
  translate(250,-250/2 +21);
  rotate(PI/4);
  //fill((int)(Math.random()*155)+100,(int)(Math.random()*155)+100,(int)(Math.random()*155)+100);
  fractal(250,250,450);
  popMatrix();
  }
  if(key == 'q'){
    frSize += 50;
    
  }
  if(key == 'w'){
    frSize -= 50;
    
  }
  if(key == 'e'){
  randomColorMode = !randomColorMode;
  }
  
}

void draw(){
  
}


public void fractal(int x, int y, int siz){
  
  if(siz < 20){
    rect(x,y,siz,siz);
  }
  else{
    fractal(x,y,siz/2);
    fractal(x-siz/4,y-siz/4,siz/3);
    fractal(x-siz/4,y+siz/4,siz/3);
    fractal(x+siz/4,y-siz/4,siz/3);
    fractal(x+siz/4,y+siz/4,siz/3);
    
  }
  
  
  
}
