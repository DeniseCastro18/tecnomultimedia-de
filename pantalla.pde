class Pantalla {
  PImage []img=new PImage[16];

  Pantalla () {
    img[0]=loadImage("periodico.png");
    img[1]=loadImage("casa-simpson.jpg");
    img[2]=loadImage("CasaD.jpg");
    img[3]=loadImage("comedor.jpg");
    img[4]=loadImage("HabitBart.jpg");
    img[5]=loadImage("sofa.jpg");
    img[6]=loadImage("habita10.jpg");
    img[7]=loadImage("habitLisa.jpg");
    img[8]=loadImage("habit hm.jpg");
    img[9]=loadImage("todos.png");
    img[10]=loadImage("homero corre.png");
    img[11]=loadImage("nombre.png");
    img[12]=loadImage("grita.png");
    img[13]=loadImage("fue_0.png");
    img[14]=loadImage("flama2.png");
    img[15]=loadImage("flecha1.png");
  }
  void dibujarfondo(PImage img) {
    image(img, 0, 0);
  }
  void pantalla0() {
    image(img[10], 550, 0, 245, 531);
    image(img[11], 0, 0);
  }
  void pantalla1() {
    image (img[12], 350, 235);
  }
  void pantalla2() {
    image(img [13], 205, 220);
    image(img [14], 0, 250);
  }
}
