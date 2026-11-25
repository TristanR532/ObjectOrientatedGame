float timeline = 0;
float mousePressTimeline = 0;

ArrayList<RegularNote> noteList = new ArrayList<RegularNote>();

void setup()
{
  size(400,400);
  frameRate(60);
  
  for (int i = 0; i < 4; i++)
  {
    noteList.add(new RegularNote(new PVector(50 + i*100,200), 5 + i*.5, 50));
  }
}

void UpdateTimeline()
{
  timeline = millis()/1000.0;
}

void draw()
{
  UpdateTimeline();
  
  background(255);
  
  for (RegularNote note : noteList)
  {
    note.CheckHit();
    note.Display();
  }
}

void mousePressed()
{
  mousePressTimeline = timeline;
}

void mouseReleased()
{
}
