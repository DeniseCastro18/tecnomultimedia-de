class Boton{
  Aventura Av;
   Personaje Pr;
  PImage[]Bot=new PImage [6];
  
Boton(){
  Av =new Aventura(); 
  Pr=new Personaje();
Bot[0]=loadImage("flecha1.png");
Bot[1]=loadImage("flechaD.png");
Bot[2]=loadImage("flechaH.png");
Bot[3]=loadImage("flechaab.png");
Bot[4]=loadImage("th(1).png");
Bot[5]=loadImage("th(2).png");

  }
  void dibujar(PImage Bot,float x,float y){
    image(Bot,x,y);
  }
  void click(String b ,int y1, int y2 , int x1, int x2, int M ,int M1){
  pushStyle();
   if(mouseY>y1 && mouseY<y2+M && mouseX>x1 && mouseX<x2+M1 && Av.delay>5){
    Av.estado = b;
    Av.delay=0; 
   popStyle();
    
  }
}
void botones(){
   if(Av.estado.equals("direcciones")){
 click("comedor" ,370,370,600,600,81,100);
 click("sala" ,370,370,100,100,81,100);
 click("escaleras" ,200,200,500,500,124,100);
}
 if(Av.estado.equals("comedor")){
  click("direcciones" ,500,500,600,600,50,80);
  if(mouseY>200 && mouseY< 200+223 && mouseX>0 && mouseX <0+150&& Av.delay>5){
      Pr.salvado[0]=true;}
  }
     if(Av.estado.equals("sala")){
     if(mouseY>320 && mouseY<320+40 && mouseX>410 && mouseX<410+40){
       Av.estado="presentacion";
     Pr.salvado[0]=false;
     Pr.salvado[1]=false;
     Pr.salvado[2]=false; 
     }
       else if(mouseY>320 && mouseY<320+40 && mouseX>340 && mouseX<340+40){
   Av.estado="final1"; 
   Av.delay=0;
  }
}
if(Av.estado.equals("escaleras")){
 click("direcciones",115,115,705,705,130,130);
 click("habit1",300,300,255,255,100,100);
 click("habit2",300,300,410,410,100,100);
 click("habit3",360,360,210,210,100,100);
 click("baño",30,30,335,335,100,100);
}
 if(Av.estado.equals("baño")){
   click("presentacion",320,320,410,410,40,40);
     Pr.salvado[0]=false;
     Pr.salvado[1]=false;
     Pr.salvado[2]=false;
  click("final1",320,320,340,340,40,40);
}
if(Av.estado.equals("habit1")){
   click("escaleras",500,500,600,600,50,80);
    if(mouseY>260 && mouseY< 260+185 && mouseX>150 && mouseX <150+185 &&  Av.delay>5){
      Pr.salvado[1]=true;}
}
if(Av.estado.equals("habit2")){
  click("escaleras",500,500,10,10,50,80);
 if(mouseY>150 && mouseY<150+162 && mouseX>200 && mouseX <200+150&& Av.delay>5){
      Pr.salvado[2]=true;}
}
if(Av.estado.equals("habit3")){ 
   click("escaleras",500,500,600,600,50,80);
}
}
}
