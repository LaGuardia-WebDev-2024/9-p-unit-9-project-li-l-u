setup = function() {
    size(600, 400);
};

//Background Images
var caveSceneImage = loadImage("https://media.fab.com/image_previews/gallery_images/ce056cb3-cdf0-40f1-9c58-ccce16c6cf62/fbc1dfbb-2e3b-4752-83f0-a7ae9239e9f7.jpg");

var forestImage = loadImage("https://assetstorev1-prd-cdn.unity3d.com/package-screenshot/1d8a29ec-8d2d-44ad-bcec-aaf04b6cc568_scaled.jpg");

var dungeonImage = loadImage("https://cdn.glitch.global/ed67939a-f91e-4ea3-9a18-8b43e397ef57/5e70740b-4844-4836-94fc-3dfec6a1698c.ab2a0d25283133.59ddf2614534b.jpg?v=1741395003281");
var goblinImage = loadImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTa0Gmer2iDLSxGR1bTstKkh7pKyXdg9DuDmg&s");
//Variable Declarations
var sceneImage = caveSceneImage;
var sceneText = "Where do you want to go?  [Press L for left and R for right]";



draw = function(){
  

   if(keyPressed){
     
     if(key == 's'){
      sceneImage = caveSceneImage;
      sceneText = "Where do you want to go?  [Press l for left and r for right]";
    }
    if(key == 'l'){
    
    sceneImage = dungeonImage;
    sceneText = "There's the goblin! Run after him!";
    if(mousePressed){
    drawGoblin(random(0,600),random(0,600));
    }
    }
    if(key == 'r'){
    sceneImage = forestImage;
    sceneText = "No goblin here, press s to restart."
    }
    
   };
   
   
  drawScene(); 


};

var drawScene = function(){
    image(sceneImage, 0, 0);
    
    fill(0,0,0);
    rect(0, 350, 600, 100);
      
    fill(255,255,255);
    textSize(20);
   
   text(sceneText, 10, 375);
};
var drawGoblin = function(){
fill (0,100,0);
var goblinX=random(100,200);
var goblinY=random(100,200);
ellipse(goblinX,goblinY, 20,20);


}
