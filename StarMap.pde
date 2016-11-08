//Mark Donnelly Student No:C14427952\\



void setup()
{
  size(800,800);
  loadData();
  border = width * 0.1f;
  
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
  
  stroke(174,17,191);
  noFill();
  for(int x = 0; x < 500*6; x+=50) 
  {
   for(int y = 0; y < 500*6; y+=50)
   {
     rect(x,y,50,50);
     rect(x+50, y+50, 50, 50);
   }
  }
  
}

void draw()
{
  background(0);
  printStars();
}