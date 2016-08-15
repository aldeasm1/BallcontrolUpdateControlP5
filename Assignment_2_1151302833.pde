 import controlP5.*;

    ControlP5 cp5;
    int v1;
    float x;
    float y;
    float easing = 1.99;

    void setup() {
      size(800, 400);  
      noStroke();
      cp5 = new ControlP5(this);
      cp5.addSlider("mySlider").setPosition(20,20).setSize(200,20);
       cp5.addButton("myButton").setPosition(20,60).setSize(100,40);
     cp5 = new ControlP5(this);
  cp5.addSlider("s1")
     .setPosition(20, 100)
     .setSize(200, 20);

  cp5.addSlider("s2")
     .setPosition(20, 130)
     .setSize(200, 20)
     .moveTo("extra")
     ;
      cp5.addSlider("v1")
         .setPosition(40, 40)
         .setSize(200, 20)
         .setRange(100, 300)
         .setValue(250)
         .setColorCaptionLabel(color(20,20,20));
    }

    void draw() {
      background(200, 200, 200);
       float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  // cp5.getController returns a Controller object
      Controller c = cp5.getController("mySlider");
      

      // cp5.get here returns a Slider object
      Slider slider = cp5.get(Slider.class, "mySlider");
      
    
  
  ellipse(x, y, 66, 66);
  ellipse(mouseX, 16, 33, 33);   // Top circle
  ellipse(mouseX/2, 50, 33, 33); // Middle circle
  ellipse(mouseX*2, 84, 33, 33); // Bottom circle
  if (keyPressed == true) { // If the key is pressed,
    line(20, 20, 80, 80); // draw a line
  } else { // Otherwise,
    rect(40, 40, 20, 20); // draw a rectangle
  }
  line(10, 50, 90, 50);
  if (key == CODED) { 
    if (keyCode == UP) {
      y = 20;
    } else if (keyCode == DOWN) {
      y = 50;
    }
  } else {
    y = 35;
  }
  rect(25, y, 50, 30);
  if (mousePressed == true) {
    if (mouseButton == LEFT) {
      fill(0); // Black
    } else if (mouseButton == RIGHT) { 
      fill(255); // White
    }
  } else {
    fill(126); // Gray
  }
  rect(25, 25, 50, 50);

      pushMatrix();

      pushMatrix();
      fill(255, 255, 0);
      rect(v1, 100, 60, 200);
      fill(0, 255, 110);
      rect(40, v1, 320, 40);
      translate(200, 200);
      rotate(map(v1, 100, 300, -PI, PI));
      fill(255, 0, 128);
      rect(0, 0, 100, 100);
      popMatrix();

      translate(600, 100);
      for (int i=0; i<20; i++) {
        pushMatrix();
        fill(255);
        translate(0, i*10);
        rotate(map(v1+i, 0, 300, -PI, PI));
        rect(-150, 0, 300, 4);
        popMatrix();
      }

      popMatrix();
    }
