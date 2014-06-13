// Hello ! 
// first step: show the map;
// second step: deal with the data;

PImage mapImage;

PopulationTable popData;
float dataMin, dataMax; 
//DataManager DM;
String[] sites;
DataManager DM;

void setup() {
  
  smooth();
  noStroke();
  frameRate(25);
  
  size(1180, 600);
  mapImage = loadImage("Vastopolis_Map.png");
  DM = new DataManager("Microblogs.csv");
  
  //popData = new PopulationTable("Population.csv");
  //popData.showData();
 // popData.getMaxPopulation();
  
  DM.test2();
  
  // sites = String(popData.getRowNames()); 
}

void draw() {
  background(255);
  image(mapImage, 0, 0, width, height);
  
  
  // =========================//
  // TEST: draw a circle.
  // =========================//
  
  // para 1&2 is position, 3&4 is width(height)/2
  ellipseMode(RADIUS);
  DM.SearchByDate("5/19/2011 16:06");
  stroke(color(255,0,0));
  strokeWeight(5);
  for(int a = 0;a< DM.forsearch.size();a++)
    {
     // println("ID : " + ID[forsearch.get(a)] + date[forsearch.get(a)]);
     int temp =DM.forsearch.get(a) ;
     
     point(DM.Map_X[temp],DM.Map_Y[temp]);
    }  
  //fill(192, 0, 0, 60);
  //ellipse(width/2, height/2, 50, 50);
  

}




