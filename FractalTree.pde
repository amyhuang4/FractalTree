private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(133,189,219);  
  noStroke();
  fill(52,137,66);
  rect(0,400,640,80);
  stroke(107,206,102);
  strokeWeight(10);
  line(320,200,320,400);  
  translate(320,400);
  rotate(45);
  fill(107,206,102);
  ellipse(0,-30,20,50);
  rotate(-90);
  ellipse(0,-30,20,50);
  rotate(45);
  translate(-320,-400);
  strokeWeight(2);
  drawBranches(320,200,30,3*Math.PI/2);  //will add later 
  drawBranches(320,200,30,-3*Math.PI/2);
  drawBranches(320,200,30,PI);
  drawBranches(320,200,30,0);
  drawBranches(320,200,30,Math.PI/4);
  drawBranches(320,200,30,3*Math.PI/4);
  drawBranches(320,200,30,5*Math.PI/4);
  drawBranches(320,200,30,7*Math.PI/4);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength *= fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  stroke(255);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if (branchLength > smallestBranch){
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
  }
} 
