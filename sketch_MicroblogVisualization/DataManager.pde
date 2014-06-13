class DataManager
{
   String[] date;
  int[] ri,yue,nian;
  String[] ID,Location,Text;
  int[] L_X,L_Y;
  
  String[] row;
  IntList forsearch;
  
  DataManager(String filename)
  {
    row = loadStrings(filename);
    date = new String[row.length - 1];
    ID = new String[row.length - 1];
    Location = new String[row.length - 1];
    Text = new String[row.length - 1];
    L_X = new int[row.length - 1];  
    L_Y = new int[row.length - 1];
    ri = new int[row.length - 1];
    yue = new int[row.length - 1];
    nian = new int[row.length - 1];
    forsearch = new IntList();
    
  }
  
  void processdata()
  {
    for(int i = 1; i < row.length ;i++)
      {
        String[] temp = split(row[i],",");
        date[i-1] = temp[1];
        ID[i - 1] = temp[0];
        Location[i-1] = temp[2];
        
        
        Text[i -1] = temp[3];
        String[] temp2 = split(date[i-1]," ");
        String[] temp3 = split(temp2[0],"/");
        yue[i-1] = parseInt(temp3[0]);
        ri[i-1] = parseInt(temp3[1]);
        nian[i-1] =parseInt(temp3[2]);
        
        String[] temp4 = split(Location[i -1]," ");
        L_X[i -1] = parseInt(temp4[1]);
        L_Y[i -1] = parseInt(temp4[0]);
        
        
       }
  }
  
  void SearchByID(int id)
  {
    forsearch.clear();
    for(int i = 0;i < row.length-1;i++){
     if(parseInt(ID[i]) == id)
     {
       forsearch.append(i);
     }
    }
  }
  
  
  void SearchByDate(String dat)
  {
    forsearch.clear();
    for(int i = 0;i < row.length-1;i++){
      if(dat.equals(date[i]))
      {
        forsearch.append(i);
      }
    }
   
}
 void test(){
    SearchByID(3);
    for(int a = 0;a< forsearch.size();a++)
    {
     // println("ID : " + ID[forsearch.get(a)] + date[forsearch.get(a)]);
     int temp =forsearch.get(a);
     println("ID : " + "  "+ ID[temp] + date[temp]);
    }  
  }

}
