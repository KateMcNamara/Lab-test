// Kate McNamara
  int xx = 200, y = 100, size = 50, leng = xx + size*2;
  int xspeed = 2, yspeed = 0;
  int xx3 = xx + 50, y3 = y + 30;
  float x = 300,x1 = 300,x2 = 300,x3 = 300,x4 = 300, yy = 150, sizee = 50;
  float x1speed = 2, x2speed = 2, x3speed = 2, x4speed = 2, x5speed = 2;
  float px = 40, py = 500, psize = 25, pxspeed = 3;
void setup()
{
  size(600, 600);
 
}

void back() // background
{
  int x = 0, y = 0, y2 = 300, size = 300;
 
  noStroke();
  fill(71, 222, 255);
  rect(x, y, size*2, size);
  
  fill(85, 255, 55);
  rect(x, y2, size*2, size);
}

void plane() //drawing the plane
{
  fill(90, 99, 87);
  rect (xx, y, size*2.5, size);
  rect (xx + 45, y-25, size/1.3, size*2);
  triangle(xx + size*2.5, y, xx + size*2.5, y + size,xx + size*3, y + size);
  triangle(xx, y, xx, y + size, xx-30, y-20);
  fill(0);
  rect (xx+10, y+10, size/2, size/2);
  rect (xx+50, y+10, size/2, size/2);
  rect (xx+90, y+10, size/2, size/2);

}

void moveplane() // move the plane and have it repeat
{
  xx = xx + xspeed;
  if (xx >= 640)
  {
    xx = -150;
  }
}

void keyPressed() 
{
  fill(255,22, 35);
  xx3 = xx3 + xspeed; //make the box move with the plane
  rect(xx3, y3, size/2, size/2); // box
  
    if (xx3 >= 640) // box is placed back at the start
  {
    xx3 = -150;
  }
  
  if (key == ' ') //when you hit space the box falls
  {
    yspeed = 5;
    y3 = y3 +yspeed;
  }
  
   
}

 void keyReleased() //stop the box in a random place on the grass when space is released
 {
   if (key == ' ' && y3 >=  random(310, 350))
   {
     y3 = y3 - yspeed;
     xx3 = xx3 - xspeed;
   }
   
   

 }

void clouds() //drawing the clouds and having them at random speeds
{
  fill(255);
  strokeWeight(5);
  stroke(199, 240, 255);
  
  //c1
  x1speed = random(1, 5);
  x = x + x1speed;
  ellipse(x, y, sizee*2, sizee);
    if (x >= 740)
  {
    x = -150;
  }
  //c2
  x2speed = random(4, 6);
  x1 = x1 + x2speed;
  ellipse(x1+100, yy+100, sizee*2, sizee);
  if (x1 >= 740)
  {
    x1 = -150;
  }
  //c3
  x3speed = random(1, 3);
  x2 = x2 + x3speed;
  ellipse(x2-100, yy - 100, sizee*2, sizee);
    if (x2 >= 740)
  {
    x2 = -150;
  }
  //c4
  x4speed = random(1, 6);
  x3 = x3 + x4speed;
  ellipse(x3+100, yy-100, sizee*2, sizee);
      if (x3 >= 740)
  {
    x3 = -150;
  }
  //c5
  x5speed = random(2, 4);
  x4 = x4 + x5speed;
  ellipse(x4-100, yy+100, sizee*2, sizee);
  if (x4 >= 740)
  {
    x4 = -150;
  }
}

void person() //drawing the person and having them move back and forth
{
  fill(201, 50, 255);
  line(px,py, px, py - 40);
  line(px,py, px - 20, py + 20);
  line(px,py, px + 20, py + 20);
  line(px,py-40, px - 20, py - 20);
  line(px,py-40, px + 20, py - 20);
  ellipse(px,py-55, psize, psize);
  px = px + pxspeed; 

  if (px < 50)
  {
     px = px + pxspeed;
     pxspeed = 5;
    
  }

  if (px > 550)
  {
    px = px - pxspeed;
    pxspeed = -5;

  }
  

}
  
void draw()
{
 back();
 clouds();
 noStroke();
 keyPressed();
 keyReleased();
 plane();
 moveplane();
 stroke(201, 50, 255);
 person();
}
