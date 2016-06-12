int x,y= 100;
int z,d = 50;
int stnr,lftd,ana,dev,prj,skl;

void setup() {
  size(700,700);
String[] data=loadStrings("studentcijfers.txt");


for(int i = 0; i< 7; i++){
    text("stnr",50,50);
    text("lftd", 150,150);
    text("ana", 250,250);
    text("dev", 350,350);
    text("prj", 450,450);
   text("skl", 550,550);
  
line(x,0,x,600);
x=x+100;

line(0,y,600,y);
y=y+100;
  

}

text("80001",605, 95);
text("80100",605, 50);
text("80250",605, 15);

text("16",605,190);
text("20",605,155);
text("24",605,120);

text("3,6",605, 295);
text("6.5",605, 250);
text("9.3",605, 215);
  
text("0.0",605, 395);
text("3.5",605, 350);
text("6.1",605, 315); 

text("4.1",605, 495);
text("7.0",605, 450);
text("10",605, 415);

text("7.4",605, 595);
text("7.7",605, 550);
text("8",605, 515);
  
for(int i = 2; i < data.length; i++) {
      String[] rij = data[i].split("\\t");
        rij[2] = rij[2].replace(",",".");
         rij[3] = rij[3].replace(",",".");
         rij[4] = rij[4].replace(",",".");
         rij[5] = rij[5].replace(",",".");
      int stnr =  Integer.parseInt(rij[0]);
       int lftd =  Integer.parseInt(rij[1]);
        Float ana =  Float.parseFloat(rij[2]);
         Float dev =  Float.parseFloat(rij[3]);
          Float prj =  Float.parseFloat(rij[4]);
           Float skl =  Float.parseFloat(rij[5]);
           
Float x1= map(lftd,16,24,100,200);
Float y1= map(stnr,80001,80250,0,100);
Float x2= map(ana,3.6,9.3,200,300);
Float x3= map(dev,6.1,0.0,300,400);
Float x4= map(prj,4.1,10.0,400,500);
Float x5= map(skl,8.0,7.4,500,600);

//teken de scatterplots
//eerste rij
ellipse(x1,y1,4,4);
ellipse(x2,y1,4,4);
ellipse(x3,y1,4,4);
ellipse(x4,y1,4,4);
ellipse(x5,y1,4,4);

//tweede rij
ellipse(y1,x1,4,4);
ellipse(x2,x1,4,4);
ellipse(x3,x1,4,4);
ellipse(x4,x1,4,4);
ellipse(x5,x1,4,4);

//derde rij
ellipse(y1,x2,4,4);
ellipse(x1,x2,4,4);
ellipse(x3,x2,4,4);
ellipse(x4,x2,4,4);
ellipse(x5,x2,4,4);

//vierde rij
ellipse(y1,x3,4,4);
ellipse(x1,x3,4,4);
ellipse(x2,x3,4,4);
ellipse(x4,x3,4,4);
ellipse(x5,x3,4,4);

//vijfde rij
ellipse(y1,x4,4,4);
ellipse(x1,x4,4,4);
ellipse(x2,x4,4,4);
ellipse(x3,x4,4,4);
ellipse(x5,x4,4,4);

//zesde rij
ellipse(y1,x5,4,4);
ellipse(x1,x5,4,4);
ellipse(x2,x5,4,4);
ellipse(x3,x5,4,4);
ellipse(x4,x5,4,4);
noSmooth();
      
}


}

void draw(){

}