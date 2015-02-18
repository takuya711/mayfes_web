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
    makeRandomWave();
    timer++;
}

void makeRandomWave(){
	for (j=0; j<waveNum; j++) {
		y1=int((customRandom()*randomWaveHeight+randomWavePriOffset)*height);
		x1=0;
		stroke(random(80), 80, random(80));
		strokeWeight(1.5);
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
