//Mark Donnelly Student No:C14427952\\



void setup()
{
  size(800,800);
  loadData();
  
}

ArrayList<Star> data = new ArrayList<Star>();

float border;
int x;
int y;

void loadData()
{
  data.clear();
  Table t = loadTable("HabHYG15ly.csv");
  for(int i = 0; i < t.getRowCount(); i ++)
  {
    TableRow row = t.getRow(i);
    Star Star = new Star(row);
    data.add(Star);
  }
}

void printStars()
{
  
}

void draw()
{
  background(0);
  stroke(174,17,191);
  noFill();
  for(int x = 0; x < 500*6; x+=100) 
  {
   for(int y = 0; y < 500*6; y+=100)
   {
     rect(x,y,50,50);
     rect(x+50, y+50, 50, 50);
   }
  }
}