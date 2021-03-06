class GuideScreen {
  level1 Level1=new level1();
  boolean MenuGuide = true, Play;
  float B1 = 100, B2 = 100;
  
  void GuideText() {
    textSize(30);
     text("Guide:", (width /2) - (textWidth("Guide:") / 2), 50);  
    
    textSize(25);
    text("Control the Frog with 4 Arrows Keys", (width /2) - 
    (textWidth("Control the Frog with 4 Arrows Keys") / 1.9), 80);  
    
    textSize(15);
   
   text("Your goal is to guide the frog to safety lane from"
   ,(width /2) - (textWidth("Your goal is to guide the frog to safety lane from")/ 2), 105); 
   
   text("the bottom of the screen to the safety lane on the top to up to next level",(width /2) - (textWidth("the bottom of the screen to the safety lane on the top to up to next level")/ 2), 125);
    
   // textSize(20);
    text("and collect more coins to get high score",(width /2) -(textWidth("and collect more coins to get high score") /2),145 );
    
  //  textSize(20);
    text("pause game press button Enter",(width /2) -(textWidth("pause game press button Enter") /2),165);
    
    textSize(25);
    text("Good Luck!", (width /2) - (textWidth("Good Luck!") / 2), 210);  
  }
  
  void GuideMenu() {  
    //Button 1: 
    fill(0, 0, 0, B1); //Button margin colour
    rect(width/2-100, height/2 + 180, 200, 50, 20); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Play", (width /2) - (textWidth("Play") / 2), (height/2) + ((textAscent() - textDescent()) / 2) + 210);
    
    //Button 2:
    fill(0, 0, 0, B2); //Button margin colour
    rect(width/2-100, height/2+250, 200, 50, 20); //Drawing the button
    fill(255); //Font colour for inside of the button
    //Button text
    text("Quit", (width /2) - (textWidth("Quit") / 2), (height/2) + ((textAscent() - textDescent()) / 2) + 280);
    
    
    if (MenuGuide) {
      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 + 180  && mouseY < height/2 +180 + 50) { //pointer collision with Button1
        if (mousePressed) { 
          file.play();
          file.loop();
          gameScreen=1;
          resetGame();
        }
        if (B1 < 150) { //Highlighting effect by darkening the colour for button 1
          B1 += 100;
        }
      } else if (B1 > 100) {
        B1 -= 100;
      }

      if (mouseX > width/2 - 100 && mouseX < width/2 + 100 
      && mouseY > height/2 + 250  && mouseY < height/2 + 250 + 50) { //pointer collision with Button3
        if (mousePressed) {
          exit();  //Quits the window
          
        }
        if (B2 < 150) { //Highlighting effect by darkening the colour for button 3
          B2 += 100;
        }
      } else if (B2 > 100) {
        B2 -= 100;
      }
    }
  }
}
