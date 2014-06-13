class TimeTable{
  int rowCount;      //行数
  int columnCount;    //列数
  int[][] data;    //数据内容
  String[] date;
  int[] ri,yue,nian;
  
   TimeTable(String filename)
  {
      String[] row = loadStrings(filename);
      String[] columns = split(row[0],",");
      
   
      for(int i = 1; i < row.length ;i++)
      {
        String[] temp = split(row[i],",");
        date[i-1] = temp[1];
        String[] temp2 = split(date[i-1]," ");
        String[] temp3 = split(temp2[0],"/");
        yue[i-1] = parseInt(temp3[0]);
        ri[i-1] = parseInt(temp3[1]);
        nian[i-1] =parseInt(temp3[2]);
       }
      
      
    }
  
 
  void test()
  {
      println("whatfuck");
  }

}
