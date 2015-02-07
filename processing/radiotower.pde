int i;
int waveNum1, waveNum2;
int timer = 0;
int block=20;
int waveLimit = 20;
float towerHeight = 0.45;
float towerWidth = 0.02;
float towerStartX = 0.1;
int waveSpeed = (int)(innerWidth/8);
Wave[] Waves1 = new Wave[waveLimit];
Wave[] Waves2 = new Wave[waveLimit];

void setup() {
	size(innerWidth, innerHeight);
	graphPaper();
	makeTower();
	frameRate(5);
	waveNum1=waveNum2=0;
}

void draw() {
	size(innerWidth, innerHeight);
	graphPaper();
	makeTower();
	waveSpeed = (int)(innerWidth/8);

	for (i=0; i<waveNum1; i++) {
		Waves1[i].update();
	}
	for (i=0; i<waveNum2; i++) {
		Waves2[i].update();
	}
	if (random(1)>0.6) {
		Waves1[waveNum1] = new Wave(width*(towerStartX+towerWidth), height*(1-towerHeight));
		if (waveNum1==(waveLimit-1)) {
			waveNum1 -= (waveLimit-1);
		} else {
			waveNum1++;
		}
	}
	if (random(1)>0.6) {
		Waves2[waveNum2] = new Wave(width*(1-towerStartX-towerWidth), height*towerHeight);
		if (waveNum2==(waveLimit-1)) {
			waveNum2 -= (waveLimit-1);
		} else {
			waveNum2++;
		}
	}
}


void graphPaper() {
	background(0, 0, 0);
	strokeWeight(1);
	stroke(50);
	for (i=0; i<width/block; i++) {
		line(i*block, 0, i*block, height);
	}
	for (i=0; i<height/block; i++) {
		line(0, i*block, width, i*block);
	}
	timer++;
}

class Wave {
	int genTime;
	int xPos, yPos;
	int flag = 0;

	Wave(float x, float y) {
		xPos = (int)x;
		yPos = (int)y;
		genTime = timer;
		flag = 1;
	}

	void update() {
		if (flag==1) {
			strokeWeight(2);
			stroke(random(120), 120, random(120));
			noFill();
			ellipse(xPos, yPos, (timer - genTime)*waveSpeed, (timer - genTime)*waveSpeed);
		}
	}
}

void makeTower() {
	strokeWeight(4);
	stroke(150, 0, 0);
	line(width*towerStartX, height, width*(towerStartX+towerWidth), height*(1-towerHeight));
	line(width*(towerStartX+towerWidth), height*(1-towerHeight), width*(towerStartX+towerWidth), height);
	line(width*(1-towerStartX), 0, width*(1-towerStartX-towerWidth), (int)(height*towerHeight));
	line(width*(1-towerStartX-towerWidth), height*towerHeight, width*(1-towerStartX-towerWidth), 0);
}