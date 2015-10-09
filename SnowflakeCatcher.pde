Snowflake [] frosty;


void setup()
{
  //your code here
  size(600,900);
  background(148, 148, 255);
  frosty = new Snowflake[20];
  for (int i=0; i<frosty.length; i++)
  {
    frosty[i]= new Snowflake();
  }
  

}
void mouseDragged()
{
  //your code here
  if(mouseButton == LEFT)
  {
  fill(0);
  ellipse(mouseX,mouseY,15,15);
}
if(mouseButton == RIGHT)
{
  fill(148,148,255);
  ellipse(mouseX,mouseY,15,15);

}
}

void draw()
{

  for (int i=0; i<frosty.length; i++)
  {

   

    frosty[i].lookDown();
frosty[i].erase();
    frosty[i].show();
        frosty[i].move();
        frosty[i].reset();
   


   frosty[i].wrap();
  }  

}

class Snowflake
{
  //class member variable declarations
  int sX, sY;
  boolean fall;
  Snowflake()
  {
    //class member variable initializations
    
   sX = (int)(Math.random()*600);
  
   
  
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255);

   ellipse(sX,sY,10,10);
  }
  void lookDown()
  {
    //your code here
    if(get(sX,sY+10) != color(148, 148, 255))
   fall=false;
    
    else 
     fall = true;
      
    }
    
  

  
  void erase()
  {
    noStroke();
    fill(148, 148, 255);
    ellipse(sX,sY,15,15);
  }

  void move()
  {
    if(fall == true)
    sY +=1;
  else if(fall == false)
    sY = sY;

    
  
  }

  void wrap()
  {
    //your code here
     if(sY>880)
     {
      sY=0;
      fill(148, 148, 255);
    rect(0,850,600,300);
  }

}

void reset()
{
  if(keyPressed == true)
  {
    sY=0;
  
  background(148, 148, 255);
}
}  
  


}

