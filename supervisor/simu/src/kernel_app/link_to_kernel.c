#include "link_to_kernel.h"
#include <stdio.h>
#include <sys/time.h>

int32_t ms;

uint8_t inputs[21];
uint8_t outputs[9];

struct _struct_safety_variables *get_safety_variables( ) {
 	return &safety_variables.fields;
}

void start() {

}

void get_ms_tick (uint32_t* ms) {
	int32_t ms_now;
	
	clock_t stop;
	stop = clock();
	
	//ms_now = (int32_t)((double)stop / CLOCKS_PER_SEC) * 1000);
	ms_now = (int32_t) (((double)stop / CLOCKS_PER_SEC) * 1000);
	//printf("ms : %i ", ms_now);
	*ms = ms_now;
}

void set_ms_tick (uint32_t _ms) {
	printf("set_ms_tick : %i ", _ms);
	ms = _ms;
}

void read_global_input(uint8_t id, uint8_t* val ){
	*val = inputs[id];
}
void write_global_output (uint8_t id , uint8_t val){
	outputs[id] = val;
} 

uint8_t read_output(uint8_t id ){
	return outputs[id];
}

void write_input (uint8_t id , uint8_t val){
 
	inputs[id] = val;
} 

void print_uint8 (uint8_t val1, uint8_t val2){
	 //printf("log : %i %i ", val1,val2);
}              
         
uint8_t get_replica_id(){
	return 1;
}
 
void print_global_inputs (){
		
}


void g_standard_types__initialisation      (){}
void g_operators__initialisation         (){}
void io_constants__initialisation       (){}
void lchip_configuration__initialisation   (){}
