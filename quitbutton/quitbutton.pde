//Global Variables
float QX, QY, QWIDTH, QHEIGHT;
color buttonColour, Green=#02A027, Blue=#4408FF, resetWhite=#FFFCFF;

void setup() {
  fullScreen();


  QX= width*1/4;
  QY= height*1/4;
  QWIDTH = width*2/4;
  QHEIGHT = height *1/2;
}


void draw() {
  println(mouseX, mouseY);
  if (mouseX>QX && mouseX<QX+QWIDTH && mouseY>QY && mouseY<QY+QHEIGHT) {
    buttonColour= Blue;
  } else { 
    buttonColour=Green;
  }






  fill(buttonColour);
  rect(QX, QY, QWIDTH, QHEIGHT);
  fill(resetWhite);
}


void keyPressed() {
  if (key == 'k'|| key == 'K') exit();
}


void mousePressed() {
  if (mouseX>QX && mouseX<QX+QWIDTH && mouseY>QY && mouseY<QY+QHEIGHT)exit();
}
