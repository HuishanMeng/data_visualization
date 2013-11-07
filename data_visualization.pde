int []dataTV;
int []datanewspaper;
int []dataInternet;
int [] dataradio;
String []s= {
  "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010"
};
String TV="TV";
String Internet="Internet";
String radio="Radio";
String Newspaper="Newspaper";
String message1="Where the public";
String message2="get its news?";

void setup() {
  size(700, 700);
  smooth();
  String[] TV=loadStrings("TV.txt");
  String[] newspaper=loadStrings("newspaper.txt");
  String[] Internet=loadStrings("Internet.txt");
  String[] radio=loadStrings("radio.txt");
  dataTV=int(split(TV[0], ','));
  datanewspaper=int(split(newspaper[0], ','));
  dataInternet=int(split(Internet[0], ','));
  dataradio=int(split(radio[0], ','));
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  rectMode(CENTER);
  textSize(20);
  textAlign(CENTER);
  text(TV, width/2, height/2-170);
  text(Internet, width/2, height/2+170);
  text(radio, width/2+190, height/2);
  text(Newspaper, width/2-210, height/2);
  textSize(25);
  text(message1, width/2-50+30+20,height/2-50);
  text(message2, width/2-50+30+20,height/2);
  
  
  rect(width/2, height/2-10, 300, 300);
  strokeWeight(1);
  stroke(0);
  textSize(10);
  for (int i=0;i<dataTV.length;i++) {
    fill(dataTV[i], 120, 250);
    rect(i*50+100, 0, 40, dataTV[i]*4);
    text(s[i], width/2-130+i*30-5, height/2-10-130);
  }
  for (int m=0;m<datanewspaper.length;m++) {
    fill(120, datanewspaper[m], 250);

    rectMode(CORNER);
    rect(0, m*50+180, datanewspaper[m]*1.5, 40);
  }

  for (int m=1;m<datanewspaper.length;m++) {
    text(s[m], width/2-120-20+15, height/2-10-150+m*25+20);
  }
  for (int r=0;r<dataradio.length;r++) {
    fill(255, dataradio[r], 250);
    rectMode(CENTER);
    rect(width-dataradio[r]/2, r*50+150, dataradio[r]*3, 40);
  }
  for (int r=0;r<(datanewspaper.length)-1;r++) {
    text(s[r], width/2+120, height/2-10-150+r*25+25+20);
  }  

  for (int n=0;n<dataInternet.length;n++) {
    fill(120, 250, dataInternet[n]);
    rect(n*50+120, height-dataInternet[n]/2, 40, dataInternet[n]*5);
    text(s[n], width/2-130+n*30-5, height/2-10+130);
  }
  noLoop();
}
