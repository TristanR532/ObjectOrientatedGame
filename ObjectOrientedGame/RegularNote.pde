class RegularNote
{
  PVector position;
  
  float noteTimeHit, noteRadius;
  
  boolean noteHit;
  
  RegularNote(PVector origin, float timeHit, float radius)
  {
    position = origin;
    noteTimeHit = timeHit;
    noteRadius = radius;
  }
  
  void Display()
  {
    if (noteTimeHit - timeline > 3 || noteHit)
    {
      return;
    }
    
    if (noteTimeHit - timeline > 0)
    {
      fill(150 - (noteTimeHit - timeline)*50.0);
    }
    else
    {
      fill(255,0,0);
    }
      
    noStroke();
    circle(position.x, position.y, noteRadius);
  }
  
  void CheckHit()
  {
    if (noteHit || timeline - mousePressTimeline > .1 || sqrt(pow(abs(mouseX - position.x),2) + pow(abs(mouseY - position.y),2)) > noteRadius)
    {
      return;
    }
    
    if (noteTimeHit - timeline < 0)
    {
      noteHit = true;
    }
  }
}
