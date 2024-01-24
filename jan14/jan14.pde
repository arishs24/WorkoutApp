/*
 Name:        Workout Warrior
 Purpose:     A friendly user-itneractive workout app to help you workout and manage your daily calorie intake.
 
 Author:      Arish Shahab
 Created:     06-Dec-2021
 Updated:     14-Jan-2022
 
 https://processing.org/reference/
 ---------------------------------------------
 I think this project deserves a 4+ because I have successfully added all the required elements for a level 4 and included extra 
 features that makes my code even better. I included a well-made user interface with personalized workouts for each body part as
 well as tracking the amount of calories burned for each workout and caculating your total required calorie intake based on your weight.
 Used a timer to help make workouts more effiecient and user-friendly. Adding pictures and videos to help guide the user as well as an in-app currency
 which motivates the user to workout more. Added different audio tracks to suit every desired user.
 
 Features Added:
In app currency
Additional music which can be earned with the in app currency
Personalized workouts for eahc body part
Calrorie calculator
Carloies burned from each workout
Gifs to help guide the user on how to do the workout
User-friendly pictures to help guide user through the app
Back button to help user guide themselves around the app
Ability to enter weight to calculate exact daily calorie intake
 */

//Global Variables
import processing.sound.*;
import gifAnimation.*;
String gameState;
String weightText;
PImage Chestimg;
PImage Legimg;
PImage Armsimg;
PImage Absimg;
PImage pushup1img;
PImage incpushimg;
PImage starimg;
PImage dec;
PImage dips;
PImage chin;
PImage updown;
PImage backbutton;
PImage squat;
PImage lunge;
PImage split;
PImage situp;
PImage russ;
PImage plank;
PImage gym;
PImage check;
int Timer = 60;
int gems = 0;
import processing.sound.*;
SoundFile file;
import gifAnimation.*;
Gif regpushup;
Gif incline;
Gif decline;
Gif dips2;
Gif chin2;
Gif updown2;
Gif squat2;
Gif lunge2;
Gif split2;
Gif russ2;
Gif plank2;
Gif situp2;


void setup () {
  size (1000, 800);
  gameState = "start screen";
  weightText = "";
  backbutton = loadImage("../backbutton.png");
  regpushup = new Gif(this, "../push.gif");
  incline = new Gif(this, "../incline.gif");
  decline = new Gif(this, "../decline.gif");
  dips2 = new Gif(this, "../dips2.gif");
  chin2 = new Gif(this, "../chin2.gif");
  updown2 = new Gif(this, "../updown2.gif");
  squat2 = new Gif (this, "../squat2.gif");
  lunge2 = new Gif (this, "../lunge2.gif");
  split2 = new Gif (this, "../split2.gif");
  russ2 = new Gif (this, "../russ2.gif");
  situp2 = new Gif (this, "../situp2.gif");
  plank2 = new Gif (this, "../plank2.gif");
  file = new SoundFile(this, "../music1.mp3");
  file.amp(0.1);
  file.loop();
}

void draw() {
  println ("("+mouseX+" , "+mouseY+")");
  if (gameState == "start screen") {
    gym = loadImage("../gym.jpg");
    background(0);
    image(gym, 0, 0, 1000, 800);
    textSize(60);
    stroke(204, 102, 0);
    fill(0);
    rect(107, 187, 827, 160);
    fill(255);
    text("Workout Warrior", 309, 286);
    fill(0);
    rect(138, 742, 200, 50);
    fill(255);
    textSize(30);
    text("Workouts", 168, 775);
    fill(0);
    rect(685, 742, 241.5, 50);
    fill(255);
    textSize(30);
    text("Personal Info", 710, 775);
  }
  if (gameState == "Workouts") {
    Chestimg = loadImage("../download.jpg");
    Legimg = loadImage("../leg2.jpg");
    Armsimg = loadImage("../plank.jpg");
    Absimg = loadImage("../abs.jpg");
    background (#A4F2DE);
    println ("("+mouseX+" , "+mouseY+")");
    image(backbutton, 10, 10, 75, 75);
    fill(0);
    textSize(45);
    text("Workouts", 380, 60);
    rect(65, 90, 330, 330); 
    rect(65, 450, 330, 330);
    rect(605, 450, 330, 330);
    rect(605, 90, 330, 330);
    fill(255, 255, 255);
    image(Chestimg, 65, 176, 330, 150);
    text("Chest", 164, 375);
    image(Armsimg, 65, 535, 330, 175);
    text("Arms", 164, 759);
    image(Legimg, 605, 176, 330, 150);
    text("Legs", 718, 375);
    image(Absimg, 605, 535, 330, 160);
    text("Abs", 728, 759);
  }
  if (gameState == "Chest") {
    pushup1img = loadImage("../regpushup.png");
    incpushimg = loadImage("../incline-push-up.jpg");
    starimg = loadImage("../dec2.jpg");
    dec = loadImage("../dec5.png");
    background (#C1DAF5);
    image(backbutton, 10, 10, 75, 75);
    fill (#4833C9);
    textSize(50);
    text("Chest Workouts", 302, 42);
    textSize(20);
    text("Standard Push-Ups", 104, 385);
    image(pushup1img, 39, 188, 323, 175);
    image(incpushimg, 581, 188, 323, 175);
    text("Inclined Push-Ups", 660, 385);
    image(starimg, 268, 492, 410, 195);
    text("Decline Push-Ups", 375, 708);
  }
  if (gameState == "Arms") {
    dips = loadImage("../tricep_dips.gif");
    chin = loadImage("../chin-ups.jpg");
    updown = loadImage("../updown.jpg");
    background (#E5B9EA);
    image(backbutton, 10, 10, 75, 75);
    fill (#4833C9);
    textSize(50);
    text("Arms Workouts", 302, 42);
    textSize(20);
    text("Tricep Dips", 135, 425);
    image(dips, 39, 188, 345, 200);
    image(chin, 581, 188, 330, 207);
    text("Chin Ups", 723, 425);
    image(updown, 268, 492, 440, 220);
    text("Up and Down Plank", 386, 734);
  }
  if (gameState == "Personal Info") {
    check = loadImage("../check.png");
    background (#E3948C);
    image(backbutton, 10, 10, 75, 75);
    fill(0);
    textSize(60);
    text("Personal Info", 291, 111);
    textSize(27);
    text("Please type your weight in kilograms(kg) = ", 234, 157);
    fill(0);
    text(weightText, 804, 157);
    text("Your daily caloraie intake should be  " + int(int(weightText) * 24 * 0.95 * 1.6) + ".", 238, 188);
    text("Everytime you complete a workout you earn 10 gems. \n Once you get 50 gems you will gain extra features. Gems = " + gems, 127, 618);
    if (gems >= 50) {
      text("Congratulations, you have earned 50 gems, \n if you want to change the music click here", 150, 718);
      image(check, 725, 701, 40, 40);
    }
  }
  if (gameState == "Legs") {
    squat = loadImage("../squat.jpg");
    split = loadImage("../split.jpg");
    lunge = loadImage("../lunge.jpg");
    background(#E5B9EA);
    fill (#4833C9);
    textSize(50);
    text("Leg Workouts", 302, 42);
    textSize(20);
    image(backbutton, 10, 10, 75, 75);
    text("Squat", 179, 425);
    image(squat, 39, 188, 345, 200);
    image(lunge, 581, 188, 330, 207);
    text("Lunges", 723, 425);
    image(split, 268, 492, 440, 220);
    text("Bulgarian Split Squats", 386, 734);
  }
  if (gameState == "Abs") {
    russ = loadImage("../russ.jpg");
    situp = loadImage("../situp.jpg");
    plank = loadImage("../plank.png");
    background (#E5B9EA);
    image(backbutton, 10, 10, 75, 75);
    fill (#4833C9);
    textSize(50);
    text("Ab Workouts", 302, 42);
    textSize(20);
    text("Sit Ups", 135, 425);
    image(situp, 39, 188, 345, 200);
    image(russ, 581, 188, 330, 207);
    text("Russian Twist", 695, 425);
    image(plank, 268, 492, 440, 220);
    text("Plank", 457, 734);
  }
  if (gameState == "PushUp") {

    regpushup.play();
    textSize(35);
    background (#8DEDA9);
    image(backbutton, 10, 10, 75, 75);
    image(regpushup, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
  }
  if (gameState == "IncPushUp") {

    incline.play();
    textSize(35);
    background (#8DEDA9);
    image(backbutton, 10, 10, 75, 75);
    image(incline, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
  }
  if (gameState == "DecPushUp") {

    decline.play();
    textSize(35);
    background (#8DEDA9);
    image(decline, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "dips") {

    dips2.play();
    background (#B1EFFA);
    textSize(35);
    image(dips2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "chin") {

    chin2.play();
    background (#B1EFFA);
    textSize(35);
    image(chin2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "updown") {

    updown2.play();
    background (#B1EFFA);
    textSize(35);
    image(updown2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 10 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "squat") {

    squat2.play();
    background (#B1EFFA);
    textSize(35);
    image(squat2, 74, 96, 884, 600 );
    text("Perform this workout, do 4 sets of 7 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "lunge") {

    lunge2.play();
    background (#B1EFFA);
    textSize(35);
    image(lunge2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 25 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "split") {

    split2.play();
    background (#B1EFFA);
    textSize(35);
    image(split2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 25 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "russ") {

    russ2.play();
    background (#B1EFFA);
    textSize(35);
    image(russ2, 74, 96, 884, 600 );
    text("Perform this workout, do 3 sets of 30 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "situp") {

    situp2.play();
    background (#B1EFFA);
    textSize(35);
    image(situp2, 74, 96, 884, 600 );
    text("Perform this workout, do 5 sets of 25 reps \n. You burned 50 calories!", 159, 733);
    image(backbutton, 10, 10, 75, 75);
  }
  if (gameState == "plank") {

    plank2.play();
    background (#B1EFFA);
    textSize(20);
    image(plank2, 74, 96, 884, 600 );
    text("Perform this workout for one minute. After one minute has passed it will automatically bring \n you back to the Abs screen.", 77, 733);
    image(backbutton, 10, 10, 75, 75);
    text("Time = " + Timer, 501, 770);
    delay (1000);
    Timer = Timer - 1;
    if (Timer == 0) {
      gameState = "Abs";
      Timer = 60;
    }
  }
}

void mouseClicked() {
  if (gameState == "start screen" && mouseX > 138 && mouseX < 138+200 && mouseY > 742 && mouseY < 742+50) {
    gameState = "Workouts";
  } else if (gameState == "start screen" && mouseX > 685 && mouseX < 685+241.5 && mouseY > 742 && mouseY < 742+50) {
    gameState = "Personal Info";
  } else if (gameState == "Workouts" && mouseX > 65 && mouseX < 65+330 && mouseY > 90 && mouseY < 90+330) {
    gameState = "Chest";
  } else if (gameState == "Workouts" && mouseX > 65 && mouseX < 65+330 && mouseY > 450 && mouseY < 742) {
    gameState = "Arms";
  } else if (gameState == "Workouts" && mouseX > 605 && mouseX < 605+330 && mouseY > 90 && mouseY < 90+330) {
    gameState = "Legs";
  } else if (gameState == "Workouts" && mouseX > 605 && mouseX < 605+330 && mouseY > 450 && mouseY < 450+330) {
    gameState = "Abs";
  } else if (gameState == "Chest" && mouseX > 39 && mouseX < 39+323 && mouseY > 188 && mouseY < 188+175) {
    gameState = "PushUp";
  } else if (gameState == "Chest" && mouseX > 581 && mouseX < 581+270 && mouseY > 188 && mouseY < 188+175) {
    gameState = "IncPushUp";
    gems = gems+10;
  } else if (gameState == "Chest" && mouseX > 268 && mouseX < 268+410 && mouseY > 492 && mouseY < 492+195) {
    gameState = "DecPushUp";
    gems = gems+10;
  } else if (gameState == "Workouts" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "start screen";
  } else if (gameState == "Personal Info" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "start screen";
  } else if (gameState == "Chest" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Workouts";
  } else if (gameState == "Legs" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Workouts";
  } else if (gameState == "Arms" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Workouts";
  } else if (gameState == "Abs" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Workouts";
  } else if (gameState == "PushUp" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Chest";
  } else if (gameState == "IncPushUp" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Chest";
  } else if (gameState == "DecPushUp" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Chest";
  } else if (gameState == "Arms" && mouseX > 39 && mouseX < 39+345 && mouseY > 188 && mouseY < 188+200) {
    gameState = "dips";
    gems = gems+10;
  } else if (gameState == "dips" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Arms";
  } else if (gameState == "Arms" && mouseX > 581 && mouseX < 581+330 && mouseY > 188 && mouseY < 188+207) {
    gameState = "chin";
    gems = gems+10;
  } else if (gameState == "chin" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Arms";
  } else if (gameState == "Arms" && mouseX > 268 && mouseX < 268+440 && mouseY > 492 && mouseY < 492+220) {
    gameState = "updown";
    gems = gems+10;
  } else if (gameState == "updown" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Arms";
  } else if (gameState == "Legs" && mouseX > 39 && mouseX < 39+345 && mouseY > 188 && mouseY < 188+200) {
    gameState = "squat";
    gems = gems+10;
  } else if (gameState == "squat" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Legs";
  } else if (gameState == "Legs" && mouseX > 581 && mouseX < 581+330 && mouseY > 188 && mouseY < 188+207) {
    gameState = "lunge";
    gems = gems+10;
  } else if (gameState == "lunge" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Legs";
  } else if (gameState == "Legs" && mouseX > 268 && mouseX < 268+440 && mouseY > 492 && mouseY < 492+220) {
    gameState = "split";
    gems = gems+10;
  } else if (gameState == "split" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Legs";
  } else if (gameState == "Abs" && mouseX > 39 && mouseX < 39+345 && mouseY > 188 && mouseY < 188+200) {
    gameState = "situp";
    gems = gems+10;
  } else if (gameState == "Abs" && mouseX > 581 && mouseX < 581+330 && mouseY > 188 && mouseY < 188+207) {
    gameState = "russ";
    gems = gems+10;
  } else if (gameState == "Abs" && mouseX > 268 && mouseX < 268+440 && mouseY > 492 && mouseY < 492+220) {
    gameState = "plank";
    gems = gems+10;
  } else if (gameState == "plank" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Abs";
  } else if (gameState == "russ" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Abs";
  } else if (gameState == "situp" && mouseX > 10 && mouseX < 10+75 && mouseY > 10 && mouseY < 10+75) {
    gameState = "Abs";
  } else if (gameState == "Personal Info" && mouseX > 725 && mouseX < 725+40 && mouseY > 701 && mouseY < 701+40) {
    file.stop();
    file = new SoundFile(this, "../music10.mp3");
    file.amp(0.1);
    file.loop();
  }
}
void keyTyped() {
  weightText = weightText + key;
}
