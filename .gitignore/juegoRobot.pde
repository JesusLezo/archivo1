//importo la librería
import oscP5.*;
import netP5.*;

//este es el objeto que recibe
OscP5 oscP5;

//esta será la dirección donde voy a enviar mis mensajes
NetAddress direccionRemota;








//prueba juego
int min=0,max=0;

//face


float ax=840,ay,xva,yva,tamf=50;
float yface=random(500);
float veF=1;
//twitter
float tax=940,tay,txva,tyva,tamt=random(30,60);
float ytwit=random(500);
float veT=1;
//youtube
float yx=900,yy,tamy=50;//falta
float yyou=random(500);
float veY=1;
//whatsapp
float wx=940,wy,wxva,wyva,tamw=70;
float ywhat=random(500);
float veW=1;

//monedas
float mx=940,my,mve,tamm=35;
float ymone=random(500);
int veM=1;
//masvida
float mvx=840,mvy=random(500);
float ymv = random(500);
float veMV=1;
int score=0;


PImage face,twitter,youtube,whatsapp,moneda;

float vida=400;


float vevida=1;
float Canvida;

int pantalla=1;
//antena
int antp1x=350,antp1y=150, antp2x=360,antp2y=150, antp3x=360,antp3y=250, antp4x=350,antp4y=250;
//ab
int abx = 350, aby = 350, abTamx = 100, abTamy = 25;
//cabeza
int cabx = 350, caby = 250, cabTamx = 100, cabTamy = 100;
//cuerpo
int cuep1x=300, cuep1y=250, cueTamx=100, cueTamy=100;
//mano1
int ma1p1x=250, ma1p1y=250, ma1p2x=300, ma1p2y=250, ma1p3x=300, ma1p3y=275, ma1p4x=250, ma1p4y=275;
//mano2
int ma2p1x=400, ma2p1y=250, ma2p2x=450, ma2p2y=250, ma2p3x=450, ma2p3y=275, ma2p4x=400, ma2p4y=275;
//pansa
int panp1x=350, panp1y=275, panp2x=375, panp2y=275, panp3x=375, panp3y=325, panp4x=350, panp4y=325; 
//ante bola
int anbx=355, anby=150, anbTamx=25, anbTamy=25;  
//ojo1
int ojo1x=350, ojo1y=225, ojo1Tamx=20, ojo1Tamy=25;  
//ojo2
int ojo2x=375, ojo2y=225, ojo2Tamx=20, ojo2Tamy=25; 
//aro1 
int aro1x=350, aro1y=375, aro1Tamx=90, aro1Tamy=18;
//aro2 
int aro2x=350, aro2y=395, aro2Tamx=65, aro2Tamy=15; 
//aro3 
int aro3x=350, aro3y=410, aro3Tamx=55, aro3Tamy=10; 

int M = 200;

int tag=0;
int anbcol = 0;
int pancol =0;

int Par1,Aro1;
int Aroc1=0;
int Aroc2=0;
int Aroc3=0;
int fondo;

int cont=0;


float ve=5;


int C=0;

int imagC=0;
PImage inicio,gameover,masvida,espacio2,bosque,cielo,ciudad,espacio,hielo,luna,luna2,mar,playa,rocas,volcan;

float x;
int vx=1;
float y;


void setup ()
{
  size(840,540);
  
 //inicializo el objeto oscPs, el parámetro es el puerto donde va a escuchar los mensajes entrantes
  oscP5 = new OscP5(this, 12000);

  // inicializo el objeto NetAddress pasando la dirección IP y el puerto de los mensajes salientes
  // 127.0.0.1 es mi localhost
  direccionRemota = new NetAddress("192.168.1.74", 12001); 
  
  
  
  
  

///ppppp
  face = loadImage("face.png");
  twitter = loadImage("twitter.png");
  youtube = loadImage("youtube.png");
  whatsapp = loadImage("whatsapp.png");
  moneda = loadImage("moneda.png");

  inicio = loadImage("inicio.jpg");
  gameover = loadImage("gameover.jpg");
  

  espacio2 = loadImage("espacio2.jpg");
  bosque = loadImage("bosque.jpg");
  cielo = loadImage("cielo.jpg");
  ciudad = loadImage("ciudad.jpg");
  espacio = loadImage("espacio.jpg");
  hielo = loadImage("hielo.jpg");
  luna = loadImage("luna.jpg");
  luna2 = loadImage("luna2.jpg");
  mar = loadImage("mar.jpg");
  playa = loadImage("playa.jpg");
  rocas = loadImage("rocas.jpg");
  volcan = loadImage("volcan.jpg");
  
  masvida = loadImage("masvida.png");
  
  
}


void draw()
{ 
 
  
   if(pantalla==1)
    {
        image(inicio,0,0,width,height);
      
       if(key==' ')
        {
          pantalla=2;
        }
      
    }
  
   if(pantalla==3)
    {
        image(gameover,0,0,width,height);
        textSize(35);
        noStroke();
        

        
        fill(#FCFCFC);
        text( "Tu score es:",295, 350 ); 
        textSize(40);
        text( score, 515, 350 );
      
       if(key==' ')
        {
          pantalla=2;
        }
      
    }
  
  
   if(vida<=3)
    {
        pantalla=3;
       if(key==' ')
        {
          score=0;
          pantalla=2;
          vida=450; 
          ax=1000;
          tax=1000;
          yx=1000;
          wx=2000;
          mx=1000;
          mvx=1000;
          
        }
      
    }
  
  
  
  
  
  
  
   if(vida==1)
    {
        pantalla=3;
        
        

      
       if(key==' ')
        {
           
          pantalla=2;
        }
      
    }
  
  
  
  
  

  if(pantalla==2){
 
 
    
  
  switch(imagC)
{
    case 0:
     image(espacio2,0,0,width,height); 
     imagC=0;
      break;
   case 1:
      image(rocas,0,0,width,height); 
      imagC=1;
      break;
   case 2:
      image(luna,0,0,width,height);
      imagC=2;
      break;
    case 3:
      image(hielo,0,0,width,height);
      imagC=3;
      break;
    case 4:
      image(luna2,0,0,width,height);
      break;
    case 5:
      image(cielo,0,0,width,height);
      break;
    case 6:
      image(espacio,0,0,width,height);
      break;
    case 7:
      image(playa,0,0,width,height);
      break;
    case 8:
      image(mar,0,0,width,height);
      break;
    case 9:
      image(volcan,0,0,width,height);
      break;
    case 10:
      image(ciudad,0,0,width,height);
      break;
    case 11:
      image(bosque,0,0,width,height);
      break;
 }
 
if (mousePressed) //== true)
  {
    imagC++;
  }
if (imagC>=12)
  {
    imagC=0;
  }  
    
fondo++;
 if(fondo>=2500)
 {
    imagC++;  
 }  
 if(fondo>=2501)
 {
  fondo=0;  
 }
  
  robot1();
  
 
 
    
  


  
  
  
  
 
 strokeWeight(7); 
 stroke(#A866F0,Aroc2); 
 rect(x+cuep1x-M,y+cuep1y-M,cueTamx,cueTamy); 
 
//////////////////////////////////// obstáculos//////////////////////////////////////////////////////////// 
masvida();
youtube();
facebook();
whatsapp();
twitter();
moneda();





textSize(32);
noStroke();
fill(#1F066A,90);

 rect(610,5,150,30);
 fill(#FCFCFC);
 text( score, 700, 30 );
  text( "score", 610, 30 ); 

 
  
  
  //vida
  strokeWeight(3); 
  stroke(#6C101D);
 fill(#FA6767);
 rect(10,10,vida,30);
 
 

 
  
   //velocidad
   
}


}
  










 void keyPressed() {
 
  if (keyPressed)
  {
    if ((key == 'q') || (key == 'Q'))
    {
      if(ve<50)
      ve+=3;
      
    }
    
    if ((key == 'w') || (key == 'W'))
    {
      
      if(ve>1)
      ve-=3;
    }
    
    if ((key == ' ') || (key == ' '))
    {
      
      if(ve>1)
      ve=5;
    }
    
  } 
  }


 void TAM() {
  
  
  
  if(cueTamx<=20)
    {
      Canvida=70;
    }
    
    if(cueTamx>=21 && cueTamx<=50)
    {
      Canvida=30;
    }
    
    if(cueTamx>=51 && cueTamx<=80)
    {
      Canvida=7;
    }
    
     if(cueTamx>=81 && cueTamx<=100)
    {
      Canvida=5;
    }
    
     if(cueTamx>=101 && cueTamx<=130)
    {
      Canvida=4;
    }
    
     if(cueTamx>=131 && cueTamx<=150)
    {
      Canvida=3;
    }
    
     if(cueTamx>=151 && cueTamx<=180)
    {
      Canvida=2;
    }
    
     if(cueTamx>=181 && cueTamx<=210)
    {
      Canvida=1;
    }
    
    if(cueTamx>=230)
    {
      Canvida=0;
    }
}




void facebook(){
   ax-=veF;
 ay=yface;
 
 xva=x+cuep1x-M+cueTamx;
 yva=y+cuep1y-M+cueTamy;
 
 if(ax>=x+cuep1x-M && ax<=xva || ax+tamf>=x+cuep1x-M && ax+tamf<=xva || ax+tamf/2>=x+cuep1x-M && ax+tamf/2<=xva )
  { 
    if(ay>=y+cuep1y-M && ay<=yva || ay+tamf>=y+cuep1y-M && ay+tamf<=yva || ay+tamf/2>=y+cuep1y-M && ay+tamf/2<=yva )
    {
    if(vida>=1){
    TAM();  
    vida-=vevida+2+Canvida;
    //rect(20,20,20,20);
    }
    }
    
  }
 
  image(face,ax,ay,tamf,tamf);
  
  if(ax<=-20){
ax=1000;
yface=random(500);

tamf=random(30,80);

}
  
  
  
  
}

void masvida(){
   mvx-=veMV;
 
 
 xva=x+cuep1x-M+cueTamx;
 yva=y+cuep1y-M+cueTamy;
 
 if(mvx>=x+cuep1x-M && mvx<=xva || mvx+tamf>=x+cuep1x-M && mvx+tamf<=xva || mvx+tamf/2>=x+cuep1x-M && mvx+tamf/2<=xva )
  { 
    if(mvy>=y+cuep1y-M && mvy<=yva || mvy+tamf>=y+cuep1y-M && mvy+tamf<=yva || mvy+tamf/2>=y+cuep1y-M && mvy+tamf/2<=yva )
    {
    if(vida<=450){
    vida+=50;
    mvx=-100;
    //rect(20,20,20,20);
    }
    }
    
  }
 
  image(masvida,mvx,mvy,50,50);
  
  if(mvx<=-100){
mvx=2000;
mvy=random(500);
veMV=random(1,15);

  }
  
  
}

void youtube(){
   yx-=veY;
 yy=yyou;
 
 xva=x+cuep1x-M+cueTamx;
 yva=y+cuep1y-M+cueTamy;
 
 if(yx>=x+cuep1x-M && yx<=xva || yx+tamy>=x+cuep1x-M && yx+tamy<=xva || yx+tamy/2>=x+cuep1x-M && yx+tamy/2<=xva )
  { 
    if(yy>=y+cuep1y-M && yy<=yva || yy+tamy>=y+cuep1y-M && yy+tamy<=yva || yy+tamy/2>=y+cuep1y-M && yy+tamy/2<=yva )
    {
    if(vida>=1){
    TAM();  
    vida-=vevida+1+Canvida;
    //rect(20,20,20,20);
    }
    }
    
     
    
  }
 
  image(youtube,yx,yy,tamy,tamy);
  
if(yx<=-30){
yx=1000;
yyou=random(500);
tamy=random(30,120);
veY=random(1,17);


}

}


//twitter
void twitter(){ 
 tax-=veT;
tay=ytwit;
  
  txva=x+cuep1x-M+cueTamx;
tyva=y+cuep1y-M+cueTamy;
  
 if(tax>=x+cuep1x-M && tax<=xva || tax+tamt>=x+cuep1x-M && tax+tamt<=xva || tax+tamt/2>=x+cuep1x-M && tax+tamt/2<=xva )
  { 
  if(tay>=y+cuep1y-M && tay<=yva || tay+tamt>=y+cuep1y-M && tay+tamt<=yva || tay+tamt/2>=y+cuep1y-M && tay+tamt/2<=yva)
    { 
      
      
      if(vida>=1){
      TAM();
      vida-=vevida+Canvida; 
      }
      
   
    //rect(20,20,20,20);
    }
    
  }
  
  
  //logo
   image(twitter,tax,tay,tamt,tamt);
   
    
  if(tax<=-30){
tax=1000;
ytwit=random(500);

tamt=random(30,60);

}
   
}

void moneda(){
   mx-=veM;
 
 
 xva=x+cuep1x-M+cueTamx;
 yva=y+cuep1y-M+cueTamy;
 
 if(mx>=x+cuep1x-M && mx<=xva || mx+tamm>=x+cuep1x-M && mx+tamm<=xva || mx+tamm/2>=x+cuep1x-M && mx+tamm/2<=xva )
  { 
    if(my>=y+cuep1y-M && my<=yva || my+tamm>=y+cuep1y-M && my+tamm<=yva || my+tamm/2>=y+cuep1y-M && my+tamm/2<=yva )
    {
   
    score+=1;
    mx=-100;
  
    }
    
  }
 
  image(moneda,mx,my,tamm,tamm);
  
  if(mx<=-100){
mx=900;
my=random(500);
veM=int (random(1,15));
  }
  
  
}


void whatsapp(){
   wx-=veW;
 wy=ywhat;
 
 xva=x+cuep1x-M+cueTamx;
 yva=y+cuep1y-M+cueTamy;
 
 if(wx>=x+cuep1x-M && wx<=xva || wx+tamw>=x+cuep1x-M && wx+tamw<=xva || wx+tamw/2>=x+cuep1x-M && wx+tamw/2<=xva )
  { 
    if(wy>=y+cuep1y-M && wy<=yva || wy+tamw>=y+cuep1y-M && wy+tamw<=yva || wy+tamw/2>=y+cuep1y-M && wy+tamw/2<=yva )
    {
    if(vida>=1){
    TAM();  
    vida-=vevida+.5+Canvida;
    //rect(20,20,20,20);
    }
    
   

}
    
  }
 
  image(whatsapp,wx,wy,tamw,tamw);
  
  if(wx<=-30){
wx=1000;
ywhat=random(500);

}
}
















//envío un mensajes OSC al presionar el boton del mouse
void mousePressed() {
  //genero un nuevo mensaje
  OscMessage mensaje = new OscMessage("/mouseX");

  //le agrego los datos, en este caso la posición en X del mouse
  mensaje.add(mouseX); 

  //envío el mensaje 
  oscP5.send(mensaje, direccionRemota);
}

//cada vez que se recibe un mensaje de osc en el puerto asignado, se llama esta función
void oscEvent(OscMessage theOscMessage) {  
  //si el mensaje está etiquetado como "/x"
  if (theOscMessage.checkAddrPattern("/veF") == true) {
    //asigna el valor entero a la variable x
    veF = theOscMessage.get(0).intValue();
  }

  //si el mensaje está etiquetado como "/y"
  if (theOscMessage.checkAddrPattern("/veT") == true) {
    //asigna el valor entero a la variable y
    veT = theOscMessage.get(0).intValue();
  }
  
   //si el mensaje está etiquetado como "/t"
  if (theOscMessage.checkAddrPattern("/veY") == true) {
    //asigna el valor entero a la variable t
    veY = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/veW") == true) {
    //asigna el valor entero a la variable t
    veW = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/veM") == true) {
    //asigna el valor entero a la variable t
    veM = theOscMessage.get(0).intValue();
  }
  
  
  if (theOscMessage.checkAddrPattern("/veMV") == true) {
    //asigna el valor entero a la variable t
    veMV = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/ax") == true) {
    //asigna el valor entero a la variable t
    ax = theOscMessage.get(0).intValue();
  }
  
   
  
  
  
  if (theOscMessage.checkAddrPattern("/yface") == true) {
    //asigna el valor entero a la variable t
    yface = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/ymv") == true) {
    //asigna el valor entero a la variable t
    ymv = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/yyou") == true) {
    //asigna el valor entero a la variable t
    yyou = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/ymv") == true) {
    //asigna el valor entero a la variable t
    ymv = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/ywhat") == true) {
    //asigna el valor entero a la variable t
    ywhat = theOscMessage.get(0).intValue();
  }
  
 
  
  if (theOscMessage.checkAddrPattern("/ytwit") == true) {
    //asigna el valor entero a la variable t
    ytwit = theOscMessage.get(0).intValue();
  }
  
  
  if (theOscMessage.checkAddrPattern("/tamf") == true) {
    //asigna el valor entero a la variable t
    tamf = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/tamt") == true) {
    //asigna el valor entero a la variable t
    tamt = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/tamy") == true) {
    //asigna el valor entero a la variable t
    tamy = theOscMessage.get(0).intValue();
  }
  
  if (theOscMessage.checkAddrPattern("/tamw") == true) {
    //asigna el valor entero a la variable t
    tamw = theOscMessage.get(0).intValue();
  }
  
  
  
  
  
}





////////////////////////////////////ROBOT 2////////////////////////////////////////////////////////////
void robot1() {

     panp1x=cabx;
     panp2x=cabx+cueTamy/4;
     panp4x=cabx;
     panp3x=cabx+cueTamy/4;
     ojo2x=cabx+cabTamx/4; 
     parpadear();
     movimiento();
     aro();
  
  
  
  
  float dradio1 =dist(cabx,caby,cuep1x,cuep1y);
  float dmaTamy = dist(ma1p1x, ma1p1y,ma1p4x,ma1p4y);
  float dojo1 = dist(ojo1x,ojo1y,cabx,caby);
  float dantx = dist(antp1x, antp1y,antp2x, antp2y);
  float danty = dist(antp1x, antp1y,antp4x, antp4y); 
 
  //antena
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
      antp4x=ojo1x;
      
  if(dantx<=cueTamx/10)
      {
      antp2x++;
      antp3x++;
      }
     if(danty<=cueTamx)
      {
      antp1y--;
      antp2y--;
      }
      
    }
  }
  
  if ((key == 's') || (key == 'S'))
    {
      antp4x=ojo1x;
      
  if(dantx>=cueTamx/10)
      {
      antp2x--;
      antp3x--;
      }
     if(danty>=cueTamx)
      {
      antp1y++;
      antp2y++;
      }
      
    }
  stroke(#000000);
  strokeWeight(2);
  
   fill(#B8E8FE,180);
      
  quad(x+antp1x-M, y+antp1y-M, x+antp2x-M, y+antp2y-M, x+antp3x-M, y+antp3y-M, x+antp4x-M, y+antp4y-M);  
  //ab////////////////////////////////////////////////////////////////////
 if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
     abTamx++;
     if(abTamy<abTamx/4)
        abTamy++;
     
     aby=cuep1y+cueTamy;
    }
    else  if ((key == 's') || (key == 'S'))
    { 
     aby=cuep1y+cueTamy;
     
     if(abTamy>abTamx/4)
        abTamy--;
    }
  }
  fill(#060939);
  ellipse(x+abx-M, y+aby-M, abTamx, abTamy);    
  //cabeza///////////////////////////////////////////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {  
     cabTamx++;
     cabTamy++; 
    
     
    }
    else  if ((key == 's') || (key == 'S'))
    { 
      //limite minimo de tamaño
      if(cabTamx>15)
      {
      cabTamx--;
      cabTamy--;
      cueTamx--;
      cueTamy--;
      ma1p1x++; 
      ma1p4x++;
      ma2p2x--; 
      ma2p3x--;
      abTamx--;
      anby++;
      
      //panza////////////////////
      panp1x=cabx;
      panp1y=caby+cueTamy/4;
      panp2x=cabx+cueTamy/4;
      panp2y=caby+cueTamy/4;
      
      panp4x=cabx;
      panp4y=caby+3*cueTamy/4;
      panp3x=cabx+cueTamy/4;
      panp3y=caby+3*cueTamy/4;
      
    
  
      if(dradio1>=cabTamx/2)
      cuep1x++;
      }
    }
  }
  fill(#B8E8FE);  
  ellipse(x+cabx-M, y+caby-M, cabTamx, cabTamy);  
  
//cuerpo/////////////////////////////////////////////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
     cueTamx++; 
     cueTamy++; 
    }
  if(dradio1<=cabTamx/2)
     {
      cuep1x--;
     }
  
       
  }
  fill(#00CCFF);
  stroke(#030000);
  rect(x+cuep1x-M,y+cuep1y-M,cueTamx,cueTamy);
  //mano1
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    { 
     ma1p1x--; 
     ma1p4x--;
     
    ma1p2x=cuep1x; 
    ma1p2y=cuep1y;
    ma1p3x=cuep1x; 
    
    if(dmaTamy<cueTamx/4)
    {
     ma1p3y++;
     ma1p4y++;
    }
   }

   if ((key == 's') || (key == 'S'))
    {
    
  
     
    ma1p2x=cuep1x; 
    ma1p2y=cuep1y;
    ma1p3x=cuep1x; 
    
     if(dmaTamy>cueTamx/4)
    {
     ma1p3y--;
     ma1p4y--;
    }
     
    }     
  }
  
  stroke(#000000);
  fill(#0090A8,180);
  quad(x+ma1p1x-M, y+ma1p1y-M, x+ma1p2x-M, y+ma1p2y-M, x+ma1p3x-M, y+ma1p3y-M,x+ma1p4x-M, y+ma1p4y-M);
  //mano2
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
     ma2p2x++; 
     ma2p3x++;
     
    ma2p1x=cuep1x+cueTamx; 
    ma2p1y=cuep1y;
    ma2p4x=cuep1x+cueTamx; 
    
    if(dmaTamy<cueTamx/4)
    {
     ma2p3y++;
     ma2p4y++;
    }
    
    }
    
    if ((key == 's') || (key == 'S'))
    {
    ma2p1x=cuep1x+cueTamx; 
    ma2p1y=cuep1y;
    ma2p4x=cuep1x+cueTamx; 
    
    if(dmaTamy>cueTamx/4)
    {
     ma2p3y--;
     ma2p4y--;
    }
    
    }
    
  }
  fill(#0090A8,180);
  quad(x+ma2p1x-M, y+ma2p1y-M, x+ma2p2x-M, y+ma2p2y-M, x+ma2p3x-M, y+ma2p3y-M, x+ma2p4x-M, y+ma2p4y-M);
  //panza
 if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    { 
      panp1x=cabx;
      panp1y=caby+cueTamy/4;
      panp2x=cabx+cueTamy/4;
      panp2y=caby+cueTamy/4;
      
      panp4x=cabx;
      panp4y=caby+3*cueTamy/4;
      panp3x=cabx+cueTamy/4;
      panp3y=caby+3*cueTamy/4;
      
      
    }
  }
  fill(pancol);
  switch(pancol)
{
    case 0:
      fill(#752CFF);
      break;
   case 1:
      fill(#F74392);
      break;
   case 2:
      fill(#CDF743);
      break;
    case 3:
      fill(#F5A1B6);
      break;
 }
 
 if(mouseX<=width/4)
  pancol=0;
 if(mouseX>=width/4-30)
  pancol=1;
 if(mouseX>=width/2)
  pancol=2;
 if(mouseX>=width-width/4)
  pancol=3;
  
 
  
  quad(x+panp1x-M, y+panp1y-M, x+panp2x-M, y+panp2y-M, x+panp3x-M, y+panp3y-M, x+panp4x-M, y+panp4y-M);
  //ante bola////////////////////////////////////////////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
      anbx=cabx+cabTamx/20;
      anby--;
    if(anbTamx<=cueTamx/4)
      anbTamx++;
    if(anbTamy<=cueTamx/4)  
      anbTamy++;
    }
  }
   if ((key == 's') || (key == 'S'))
    {  
     anbx=cabx+cabTamx/20;
      
   
      
    if(anbTamx>=cueTamx/4)
      anbTamx--;
    if(anbTamy>=cueTamx/4)  
      anbTamy--;
   
    }
  
  fill(anbcol);
   switch(anbcol)
{
    case 0:
      fill(#752CFF);
      break;
   case 10:
      fill(#E37C6C);
      break;
   case 20:
      fill(#CDF743);
      break;
    case 30:
      fill(#EEFA74);
      break;
 }
 anbcol++;
 if(anbcol>40)
  anbcol=0;
 
  
  ellipse(x+anbx-M, y+anby-M, anbTamx, anbTamy);  
  //ojo1////////////////////////////////////////////////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    { 
    ojo1x=cabx;
    if(dojo1<dradio1/2)
    ojo1y--;
    
    if(ojo1Tamx<cabTamx/5)
    ojo1Tamx++;
    if(ojo1Tamy<cabTamy/4)
    ojo1Tamy++;
    
    
    
    }
  }
    if ((key == 's') || (key == 'S'))
    {
      
    ojo1x=cabx;
    if(dojo1>dradio1/2)
    ojo1y++;
    
    if(ojo1Tamx>cabTamx/5)
    ojo1Tamx--;
    if(ojo1Tamy>cabTamy/4)
    ojo1Tamy--;
    
    }
   

  fill(#36265A);
  ellipse(x+ojo1x-M, y+ojo1y-M, ojo1Tamx, ojo1Tamy);  
  //ojo2
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
    ojo2x=cabx+cabTamx/4;
    if(dojo1<dradio1/2)
    ojo2y--;
    
    if(ojo2Tamx<cabTamx/5)
    ojo2Tamx++;
    if(ojo2Tamy<cabTamy/4)
    ojo2Tamy++;
    
    }
    
   if ((key == 's') || (key == 'S'))
    {
      
    ojo2x=cabx+cabTamx/4;
    if(dojo1>dradio1/2)
    ojo2y++;
    
    if(ojo2Tamx>cabTamx/5)
    ojo2Tamx--;
    if(ojo2Tamy>cabTamy/4)
    ojo2Tamy--;
    
    }
  }
  fill(#36265A);
  ellipse(x+ojo2x-M, y+ojo2y-M, ojo2Tamx, ojo2Tamy); 
  //aro1 ///////////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
      
     aro1y=aby+abTamy;
     aro1Tamy=abTamy-2*abTamy/5;
     aro1Tamx=abTamx-abTamx/5;
     
    }
    
    if ((key == 's') || (key == 'S'))
    {
     aro1y=aby+abTamy;
     aro1Tamy=abTamy-2*abTamy/5;
     aro1Tamx=abTamx-abTamx/5;
    }
  }
  noFill();
  strokeWeight(3);
  stroke(#F7931E,Aroc1);
  ellipse(x+aro1x-M, y+aro1y-M, aro1Tamx, aro1Tamy);  
  //aro2 //////////////////////////////////
   if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    {
      
     aro2y=aby+abTamy+aro1Tamx/4;
     aro2Tamy=aro1Tamy;
     aro2Tamx=aro1Tamx-aro1Tamy;
     
    }
    
    if ((key == 's') || (key == 'S'))
    {
     aro2y=aby+abTamy+aro1Tamx/4;
     aro2Tamy=aro1Tamy;
     aro2Tamx=aro1Tamx-aro1Tamy;
    }
  }
  stroke(#F7931E,Aroc2);
  ellipse(x+aro2x-M, y+aro2y-M, aro2Tamx, aro2Tamy);  
  //aro3 //////////////////////////////
  if (keyPressed)
  {
    if ((key == 'a') || (key == 'A'))
    { 
      
     aro3y=aby+abTamy+2*aro1Tamx/4;
     aro3Tamy=aro1Tamy;
     aro3Tamx=aro1Tamx-aro1Tamy-2*aro2Tamy/3;
     
    }
    
    if ((key == 's') || (key == 'S'))
    {
     aro3y=aby+abTamy+2*aro1Tamx/4;
     aro3Tamy=aro1Tamy;
     aro3Tamx=aro1Tamx-aro1Tamy-2*aro2Tamy/3;
    }
  }
  stroke(#F7931E,Aroc3);
  ellipse(x+aro3x-M, y+aro3y-M, aro3Tamx, aro3Tamy);


}


//////FUNCIONES DEL ROBOT////




void parpadear(){
    
   Par1++;
 if(Par1>=300 && Par1<=325)
 {
    ojo1Tamy=0;
    ojo2Tamy=0;
    
 }
  if(Par1>=326)
  {
   Par1=0;
   ojo1Tamy=cabTamy/4; 
   ojo2Tamy=cabTamy/4; 
  }
}

void aro(){
  Aro1++;

 if(Aro1>=0 && Aro1<=2)
 {
    Aroc1=300;
 }
  if(Aro1>=2)
  {
   
   Aroc1=0;
  }
  
   if(Aro1>=2 && Aro1<=4)
 {
    Aroc2=200;
 }
  if(Aro1>=4)
  {
   Aroc2=0;
   
  }
  
  if(Aro1>=4 && Aro1<=6)
 {
    Aroc3=200;
 }
  if(Aro1>=6)
  {
   Aroc3=0;
   Aro1=0;
  }  

}



void movimiento(){
  if (keyPressed && (key == CODED))
  {
    if (keyCode == RIGHT)
    {
     if (x+abx<width+150)
     x+=ve;
    }
  }
  
   if (keyPressed && (key == CODED))
  {
    if (keyCode == LEFT)
    {
     if (x>-130)
     x-=ve;
    }
  }
  
  
   if (keyPressed && (key == CODED))
  {
    if (keyCode == UP)
    {
     if (y>-20)
     y-=ve;
    }
  }
  
  
   if (keyPressed && (key == CODED))
  {
    if (keyCode == DOWN)
    {
     if (y+aby<=height+170)
     y+=ve;
    }
  }
}
