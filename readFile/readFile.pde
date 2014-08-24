BufferedReader reader;
String line;

void setup() {
  size(200, 200);
  reader = createReader("in.dat");
}

void draw() {
  try {
    boolean bEnable = true;
 
    if(bEnable)
    {
      while((line = reader.readLine()) != null) {
        String[] pieces = split(line, "::");
        int iNumber = int(pieces[0]);
        int iCommand = int(pieces[1]);
        String sName = pieces[2];
      
        if(int(pieces[1]) == 1) {
          fill(200, 70, 70);
        } else {
          fill(70, 70, 200);
        }
         ellipse(random(10, 190), random(10, 190), 7, 7);
      }
    }

  } catch (IOException e) {
    e.printStackTrace();
    line = null;
  }
}



