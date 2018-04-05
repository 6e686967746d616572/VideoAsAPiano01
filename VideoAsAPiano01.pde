import processing.video.*;

final int quantity = 3;
final Movie[] movies = new Movie[quantity];
int indx;

void setup(){
  size(1280,720);
  movies[0] = new Movie(this, "video1.mp4");
  movies[1] = new Movie(this, "video2.mp4");
  movies[2] = new Movie(this, "video3.mp4");
}

void draw(){
  background(0);
  set(0,0,movies[indx]);
}

void movieEvent(Movie m){
  m.read();
}

static final int getMovieIndex(int k){
  switch (k){
    case 'A': return 0;
    case 'S': return 1;
    case 'D': return 2;
    default: return -1;
  }
}

void keyPressed(){
  int k = keyCode, n = getMovieIndex(k);
  
  if (n>=0 & n!=indx){
    movies[indx].pause();
    movies[indx = n].loop();
  }
}