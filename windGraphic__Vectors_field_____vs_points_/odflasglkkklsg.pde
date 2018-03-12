class Point{
 PVector position,velocity;
 
 Point()
 {
   position = new PVector(random(width-2*n)+n, random(height-2*n)+n);
   velocity=PVector.random2D();
 }
 
 void update()
 {
    stroke(c%100,100,100,3);
    point(position.x,position.y);
    position.add(velocity);
    
    if(position.x<1){position.x=width-1;position.y=random(height-2*n)+n;}
    if(position.x>width-1){position.x=1;position.y=random(height-2*n)+n;}
    
    if(position.y<1){position.y=height-1;position.x=random(width-2*n)+n;}
    if(position.y>height-1){position.y=1;position.x=random(width-2*n)+n;}
   
 }
  
  
}