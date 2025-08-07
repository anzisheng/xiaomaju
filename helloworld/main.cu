#include <iostream>
#include "cuda_runtime_h"
#include <stdio.h>
__global__ void helloworkGPU()
{
    printf("hello, world from gpu thread: %d\n", threadIdx.x);

}
int main(){
    //define the number of thread in the block
    int n_numthread = 16;
    helloworldGPU<<<1, n_numthread>>>();
    //wait for gpu finising
    CudaDeviceSynchronize();
    printf("hello world for cpu");
    
}