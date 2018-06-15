#include <stdio.h>
void main(){
int i,j,k; float a[157968], avea[144], sum,x[157968];
FILE *fp, *fpp,*fp1;
char str[280];
fp=fopen("rwlc_00108.dat","r");
fp1=fopen("wlce108.test","r");
fpp=fopen("rwlce108.test","w");
/* Reading values                     */
   for(i=0; i<157968; i++){
      fscanf(fp,"%f", &a[i]);
	
	
   }
for(i=1;i<=475;i++) 
fgets( str,180,fp1); 
for(i=0; i<500; i++){
      fscanf(fp1,"%f", &x[i]);
	printf("%f\n", x[i]);
   }

/* Averaging                          */
   for(i=0; i<144; i++){
      sum=0.0;
      for(j=0; j<1097; j++){
         sum=sum+a[i+j*144];
      }
      avea[i]=sum/1097.0;
        
   }
   j=0;
   for(i=51840; i<52340; i++){
      k=i % 144;
      fprintf(fpp,"%f\n", x[j]+avea[k]);
      printf("%d %d %f\n", i,k,x[j]+avea[k]);
	j=j+1;
   }
   
}
