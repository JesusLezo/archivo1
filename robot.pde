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