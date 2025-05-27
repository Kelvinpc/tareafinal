void setup(){
  
  //reducimos el tamaño para ahorrar recursos de hardware
  
  size(64,64);
  
}

// para generar triangulos


void draw(){

  for(int i = 0; i <6; i++){
    
    background(255);
    strokeWeight(4);
    
    pushMatrix(); //TRANSLACION DE OBJETOS
  
    //ALGORITMO PARA COORDENADAS
    
    float r=random(8,24);
    float x=random(r,width-r);
    float y=random(r,height-r);
    
    stroke(100,100,100);
    
    translate(x,y);
    
    //imagenes
    
    if(i == 0){
      
      rotate(random(-0.1,0.1));
      triangle(0,-r,r,r,-r,r);
      saveFrame("data/triangleA###.png");

    }else if(i==1){
      
      rotate(random(-0.1,0.1));
      triangle(-0,r,-r,-r,r,-r);
      saveFrame("data/triangleB###.png");
      
    }else if(i==2){

      rotate(random(-0.1,0.1));
      triangle(-20,-r,r,r,-r,r);
      saveFrame("data/triangleRectanguloA###.png");
      
    }else if(i==3){

      rotate(random(-0.1,0.1));
      triangle(20,-r,r,r,-r,r);
      saveFrame("data/triangleRectanguloB###.png");

    }else if(i==4){

      rotate(random(-0.1,0.1));
      triangle(20,-r,r,r,-r,r);
      saveFrame("data/triangleRectanguloC###.png");  
      
    }else if(i==5){
    
      rotate(random(-0.1,0.1));
      triangle(20,r,-r,-r,r,-r);
      saveFrame("data/triangleRectanguloD###.png");
      
    }
      popMatrix();

    
    if(frameCount ==100){
      exit();
    }
    
          //triangle(-0,r,-r,-r,r,-r);
          //triangle(20,r,-r,-r,r,-r);
          //triangle(20,-r,r,r,-r,r);

    
  }
}
