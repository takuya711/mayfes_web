int block = 20;
int blockWidth;
int blockHeight;
int timer = 0;
int maxX,maxY;
int i,j;
float zeroWidth=0.6;
float zeroHeight = 0.7;
float oneHeight=0.7;

void setup() {
	size(innerWidth, innerHeight);
	graphPaper();
	frameRate(5);
	strokeJoin(ROUND);
}

void draw(){
	size(innerWidth, innerHeight);
	graphPaper();
	boldness=int(blockHeight*0.05)
	blockHeight = int(innerHeight/5);
	blockWidth = int(blockHeight*0.65);
	maxX=int(innerWidth/blockWidth)+1;
	maxY=int(innerHeight/blockHeight)+2;

	drawNum();
	if(timer >= blockHeight){
		timer=0;
	}
	else{
		timer += 20;
	}
}

void drawNum(){
	for(i=0; i<maxX; i++){
		for(j=0; j<maxY; j++){
			if(random(2)>1){
				drawZero();
			}
			else{
				drawOne();
			}
		}
	}
}

void drawZero(){
	noFill();
	strokeWeight(boldness);
	stroke(0,20+random(40),0);
	rect((i+(1-zeroWidth)/2)*blockWidth, (j + (1 - zeroHeight)/2)*blockHeight - timer, zeroWidth*blockWidth, zeroHeight*blockHeight);
}

void drawOne(){
	strokeWeight(boldness);
	stroke(0,20+random(40),0);
	line((i+0.5)*blockWidth, (j + (1 - oneHeight)/2)*blockHeight - timer, (i+0.5)*blockWidth, (j + 1 - (1 - oneHeight)/2)*blockHeight - timer);
}

void graphPaper(){
	background(0, 0, 0);
	strokeWeight(1);
	stroke(50);
	for(i=0; i<width/block; i++){
		line(i*block,0,i*block,height);
	}
	for(i=0; i<height/block; i++){
		line(0,i*block,width,i*block); 
	}
}

float customRandom() {
	float retValue = 1- pow(random(1), 5);
	return retValue;
}
