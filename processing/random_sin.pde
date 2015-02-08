int x1, y1, x2, y2;
int i, j;
int k = 100;
int timer = 0;
int flag=0;
int block = 20;
int waveNum = 2;
float randomWaveHeight = 0.82;
float randomWavePriOffset = 0.05;
float randomWaveSecOffset = 0.05;
int randomWaveSampling = 15;

void setup() {
	size(innerWidth, innerHeight);
	graphPaper()
	frameRate(3);
}

void draw(){
	size(innerWidth, innerHeight);
	graphPaper();

	if (flag==0) {
		makeRandomWave();
		timer++;
	}
	flag=0;
}

void mousePressed(){
	if(timer>3){
		frameRate(1);
		makeSin();
		frameRate(3);
		timer += 12;
		if(timer>500){
			timer=0;
		}
	}
}

void makeSin(){
	graphPaper();
	stroke(255,100,0);
	strokeWeight(1);
	line(0,0.4*height,width,0.4*height);
	for (j=1; j<3; j++) {
		y1=int((sin((k/2)*j/10)+1.3)*height*0.40);;
		x1=0;
		stroke(0, 255, 0);
		strokeWeight(5);
		for (i=0; i<width/5+1; i++) {
			x2=i*5;
			y2=int((sin((i+k/2)*j/15)+1.3)*height*0.40);
			line(x1, y1, x2, y2);
			x1=x2;
			y1=y2;
		}

	}
	flag=1;
}

void makeRandomWave(){
	for (j=0; j<waveNum; j++) {
		y1=int((customRandom()*randomWaveHeight+randomWavePriOffset)*height);
		x1=0;
		stroke(0, 200, 0);
		strokeWeight(1);
		for (i=0; i<width/randomWaveSampling+1; i++) {
			x2=i*randomWaveSampling;
			y2=int((customRandom()*randomWaveHeight+j*randomWaveSecOffset+randomWavePriOffset)*height);
			line(x1, y1, x2, y2);
			x1=x2;
			y1=y2;
		}
	}

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

void cursorOsi(){
	strokeWeight(1);
	stroke(255,0,0);
	line(mouseY, 0, mouseY, height);
	line((mouseY+mouseX/8)*3,0,(mouseY+mouseX/8)*3,height);
	line(0,mouseX*0.5+mouseY/10,width,mouseX*0.5+mouseY/10);
	line(0,mouseX*1+mouseY/15,width,mouseX*1+mouseY/15);
	strokeWeight(1);
}
