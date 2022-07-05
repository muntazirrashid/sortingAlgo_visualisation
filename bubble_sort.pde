float[] vals;
int i=0, j=0;
void setup(){
  size(50, 30);
  vals = new float[width];
  for (int i = 0; i< vals.length; i++){
    vals[i] = random(height);
  }
 // vals = sort(vals);
 
}
void draw(){
  
  background(0);
  
    float a = vals[j];
    float b = vals[j+1];
    if (a>b){
      swap(vals, j, j+1);
  }
  j=j+1;
  if(i< vals.length){
  if(j>=vals.length-i-1 ){
    j=0;
    i=i+1;
  }
  }
  else{
    println("DONE");
    noLoop();
  }
  
  
  for (int i =0; i<vals.length; i++){
   stroke(200, 100, 50);
  line(i, height, i, height - vals[i]);
  }
}
void swap(float[] arr, int i, int j){
 float temp = arr[i];
  arr[i] = arr[j];
  arr[j] = temp;
  
}
