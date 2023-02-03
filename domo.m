
addpath('core');
addpath('data');
addpath('NetworkEnhancement');


rng('default');
load('dataset.mat')


Wrr = SM;
Wdd = SD;
didr=A;
Wdr=didr;
Wrd = Wdr';

lamda1=0.001;
lamda2=0.1;

KNN_K=30;
order=0.5;
K=15;
alpha=0.1;

Wrr=Network_Enhancement(Wrr,order,K,alpha);


L1=10;
L2=10;
L3=10;
L4=10;
Wrr(Wrr==0) =1e-12; 
Wdd(Wdd==0) =1e-12; 

WW = DLP(A, Wdd,Wrr,lamda1,lamda2,KNN_K);


