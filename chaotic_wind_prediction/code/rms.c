#include<stdio.h>
#include<math.h>
// #define N 18;
int main(){
   FILE *fp,*fpp;
   int i,j,N=36;
   float sum, rms, x[200],y[200];


   fp=fopen("wlc.o","r");
   fpp=fopen("wlc.p","r");
   for(i=0;i<N;i++){
      fscanf(fp,"%f",&x[i]);
      fscanf(fpp,"%f",&y[i]);

   }
   fclose(fp);
   fclose(fpp);
   sum=0.0;
   for(i=0;i<N;i++)
      sum=sum+(x[i]-y[i])*(x[i]-y[i]);
   sum=sum/((float) N);
   rms=sqrt(sum);
   printf("   %f  \n", rms);

   return 0;
}

