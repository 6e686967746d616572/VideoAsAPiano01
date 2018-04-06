import processing.video.Movie;

static final int QTY = 3;
final Movie[] movies = new Movie[QTY];
int indx;

void setup() { 
  size(1280, 720);
  movies[0] = new Movie(this, "video1.mp4");
  movies[1] = new Movie(this, "video2.mp4");
  movies[2] = new Movie(this, "video3.mp4");

  movies[0].stop();  
  movies[1].stop();
  movies[2].stop();
}

void draw() { 
  background(0);
  set(0, 0, movies[indx]);
} 

void movieEvent(Movie m) { 
  m.read();
} 

static final int getMovieIndex(int k) {
  switch (k) {  
  case '1':     
    return 1;
  case '2': 
    return 2;
  case '3': 
    return 3;
  case '4': 
    return 4;
  case '5': 
    return 5;
  case '6': 
    return 6;
  case '7': 
    return 7;
  case '8': 
    return 8;
  case '9': 
    return 9;
  case '0': 
    return 0;
  default: 
    return -1;
  }
}

void keyPressed() {
  int k = keyCode;
  int n = getMovieIndex(k);

  if (n >= 0 & n != indx){
    movies[indx].stop();                      //stops currently playing video
    movies[indx = (int)random(0,3)].loop();   //plays the chosen video in a loop
    movies[indx].jump(random(movies[indx].duration()));
    movies[indx].volume(random(0,100));
  }
}

//===========================================

//import processing.video.*;

//final int quantity = 3;
//final String[] names = {"video1.mp4", "video2.mp4", "video3.mp4"};
//Movie myMovie[] = new Movie[quantity];
//int index = 0;
//int[] currIndx;

//void setup() {
//  size(1280, 720);
//  currIndx = new int[quantity];

//  myMovie[0] = new Movie(this, "video1.mp4");
//  myMovie[1] = new Movie(this, "video2.mp4");
//  myMovie[2] = new Movie(this, "video3.mp4");
//}

//void draw() {
//  background(0);
//  //myMovie[0].play();
//  //set(0,0,myMovie[0]);
//}

//void movieEvent(Movie m) {
//  m.read();
//}

//void keyPressed() {
//  if (key == '1') {
//    //myMovie[1].stop();
//    //myMovie[2].stop();
//    setMovie(0);
//  }
//  if (key == '2') {
//    //myMovie[0].stop();
//    //myMovie[2].stop();
//    setMovie(1);
//  }
//  if (key == '3') {
//    //myMovie[0].stop();
//    //myMovie[1].stop();
//    setMovie(2);
//  }
//}

//void setMovie(int idx) {
//if (idx==0){
//  myMovie[1].stop();
//  myMovie[2].stop();
//  myMovie[0].play();
//}
//if (idx==1){
//  myMovie[0].stop();
//  myMovie[2].stop();
//  myMovie[1].play();
//}
//if (idx==2){
//  myMovie[0].stop();
//  myMovie[1].stop();
//  myMovie[2].play();
//}
//  //myMovie[idx] = new Movie(this, getMovieName(idx));
//  //myMovie[idx].stop();
//  //myMovie[idx].play();
//  //myMovie[idx].volume(0);
//}

//String getMovieName(int pos) {
//  currIndx[pos] = (int)random(quantity);
//  return names[currIndx[pos]];
//}

//========================
//import processing.video.*;

//final int Nquantity = 3;
//final Movie[] movies = new Movie[quantity];
//int indx;

//void setup(){
//  size(1280,720);
//  movies[0] = new Movie(this, "video1.mp4");
//  movies[1] = new Movie(this, "video2.mp4");
//  movies[2] = new Movie(this, "video3.mp4");
//}

//void draw(){
//  background(0);
//  set(0,0,movies[indx]);
//}

//void movieEvent(Movie m){
//  m.read();
//}

//static final int getMovieIndex(int k){
//  switch (k){
//    case 'A': return 0;
//    case 'S': return 1;
//    case 'D': return 2;
//    default: return -1;
//  }
//}

//void keyPressed(){
//  int k = keyCode;
//  int n = getMovieIndex(k);

//  if (n>=0 & n!=indx){
//    //movies[indx].pause();  //this will pause the other videos when switching
//    //movies[indx].volume(0);  //this will just cause everything to mute. not intended
//    movies[indx = n].loop();
//  }
//}