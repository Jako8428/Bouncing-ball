float xbox = 400 ; 
float ybox = 400 ; 
float BoxW = 600 ; 
float elx = random(200,300) ;
float ely = random(200,300) ;
float shrink = 0.5 ; 
float border ;
float speedx = 2 ; 
float speedy = 2 ; 
void setup() { 
  size(800,800) ; 
  fill(0,0,0) ; 
background(0,0,0) ;
} 

void draw() {
clear() ;
rectMode (CENTER) ;
rect(xbox,ybox,BoxW,BoxW) ; 
ellipse(elx,ely,10,10) ; 
elx = elx+speedx ; 
ely = ely+speedy ; 
noFill() ; 
stroke(255,255,255) ;
BoxW = BoxW-shrink;

border = Math.abs((800/2)- (BoxW/2)) ;
  if(elx-10/2 < border) {
    speedx = Math.abs(speedx) ;
  }
  if(elx-10/2 > 800-border) {
    speedx = -Math.abs(speedx) ;// kan laves random random  
  }
  if(ely-10/2 < border) {
    speedy = Math.abs(speedy) ;
  }
  if(ely-10/2 > 800-border) {
    speedy = -Math.abs(speedy) ;
  }
 

}
