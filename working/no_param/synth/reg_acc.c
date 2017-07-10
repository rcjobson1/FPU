#include "stdlib.h"
#include "stdio.h"
#include "vpi_user.h"
#include <string.h>

#define TRUE 1
#define FALSE 0
#define CLK_PERIOD 2000

static char* stage_names[6] = {
	"IF", "ID", "OF", "EX", "MEM", "WB"
};

static double stage_delays[6] = {
	0, 0, 0, 0, 0, 0
};

static char stage_regs[6][1000] = {
	"not valid", "not valid", "not valid", "not valid", "not valid", "not valid"
};

static unsigned stage_insts[6] = {
	0, 0, 0, 0, 0, 0
};

static unsigned stage_pcs[6] = {
	0, 0, 0, 0, 0, 0
};

typedef enum {
	IF, ID, OF, EX, MEM, WB
} STAGE;

static unsigned cycle = 0;
static FILE *outfp = NULL;
static int curSim = -1;

int print_table(char *user_data)
{
	vpiHandle systfref, argsiter, argh;
	systfref = vpi_handle(vpiSysTfCall, NULL);
	argsiter = vpi_iterate(vpiArgument, systfref);

	// sim time
	s_vpi_time time;
	time.type = vpiSimTime;
	vpi_get_time(NULL, &time);
	//printf("$$$START CYCLE: %d @ %4.3d\n", cycle++, time.low);

	// arm state path 
	argh = vpi_scan(argsiter); 
	if (!argh)
	{
		vpi_printf("$VPI missing parameter: numExtSim\n");
		return 0;
	}
	s_vpi_value benchmark;
	benchmark.format = vpiStringVal;
	vpi_get_value(argh, &benchmark);

	// numExtSim
	argh = vpi_scan(argsiter); 
	if (!argh)
	{
		vpi_printf("$VPI missing parameter: numExtSim\n");
		return 0;
	}
	s_vpi_value numExtSim;
	numExtSim.format = vpiIntVal;
	vpi_get_value(argh, &numExtSim);

	//IF_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value if_pc;
	if_pc.format = vpiIntVal;
	vpi_get_value(argh, &if_pc);

	//IF_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value if_valid;
	if_valid.format = vpiIntVal;
	vpi_get_value(argh, &if_valid);

	//IF_IR
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value if_ir;
	if_ir.format = vpiIntVal;
	vpi_get_value(argh, &if_ir);

	//ID_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value id_pc;
	id_pc.format = vpiIntVal;
	vpi_get_value(argh, &id_pc);	

	//ID_uPC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value id_upc;
	id_upc.format = vpiIntVal;
	vpi_get_value(argh, &id_upc);	

	//ID_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value id_valid;
	id_valid.format = vpiIntVal;
	vpi_get_value(argh, &id_valid);	

	//OF_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}	
	s_vpi_value of_pc;
	of_pc.format = vpiIntVal;
	vpi_get_value(argh, &of_pc);	

	//OF_uPC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}	
	s_vpi_value of_upc;
	of_upc.format = vpiIntVal;
	vpi_get_value(argh, &of_upc);	

	//OF_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value of_valid;
	of_valid.format = vpiIntVal;
	vpi_get_value(argh, &of_valid);	

	//EX_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value ex_pc;
	ex_pc.format = vpiIntVal;
	vpi_get_value(argh, &ex_pc);	

	//EX_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value ex_valid;
	ex_valid.format = vpiIntVal;
	vpi_get_value(argh, &ex_valid);	

	//EX_OpA
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}	
	s_vpi_value ex_opa;
	ex_opa.format = vpiIntVal;
	vpi_get_value(argh, &ex_opa);	

	//EX_OpB
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value ex_opb;
	ex_opb.format = vpiIntVal;
	vpi_get_value(argh, &ex_opb);	

	//MEM_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value mem_pc;
	mem_pc.format = vpiIntVal;
	vpi_get_value(argh, &mem_pc);	

	//MEM_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value mem_valid;
	mem_valid.format = vpiIntVal;
	vpi_get_value(argh, &mem_valid);	

	//WB_PC
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value wb_pc;
	wb_pc.format = vpiIntVal;
	vpi_get_value(argh, &wb_pc);	

	//WB_VALID
	argh = vpi_scan(argsiter);
	if (!argh) {
		vpi_printf("$VPI missing argument\n");
		return 0;
	}
	s_vpi_value wb_valid;
	wb_valid.format = vpiIntVal;
	vpi_get_value(argh, &wb_valid);	

	char * name = benchmark.value.str;
	char * tmp1 = name;
	char * tmp2 = name;
	while (*tmp2 != 0) {
		*tmp1 = *tmp2++;
		if(*tmp1 != ' ') tmp1++;
	}
	*tmp1 = 0;
	char outfile[1000];
	sprintf(outfile, "%s_%d_delay.out", name, numExtSim.value.integer);

	outfp = fopen(outfile, "a");
	if (outfp == NULL) {
		printf("Error opening file %s\n", outfile);
		exit(1);
	}

	fprintf(outfp, "\n\n$$$START OF CYCLE\n");
	fprintf(outfp, "$$$IF:\tVLD:%d\tPC:%x\tINSTR:%x\tDELAY:%f\nREG:%s\n",
		   	if_valid.value.integer, 
			if_pc.value.integer, 
			if_ir.value.integer, 
			stage_delays[IF], 
			stage_regs[IF]);
	fprintf(outfp, "$$$ID:\tVLD:%d\tPC:%x\tUPC:%x\tDELAY:%f\nREG:%s\n", 
			id_valid.value.integer, 
			id_pc.value.integer, 
			id_upc.value.integer, 
			stage_delays[ID], 
			stage_regs[ID]);
	fprintf(outfp, "$$$OF:\tVLD:%d\tPC:%x\tUPC:%x\tDELAY:%f\nREG:%s\n", 
			of_valid.value.integer, 
			of_pc.value.integer, 
			of_upc.value.integer, 
			stage_delays[OF], 
			stage_regs[OF]);
	fprintf(outfp, "$$$EX:\tVLD:%d\tPC:%x\tOPA:%x\tOPB:%x\tDELAY:%f\nREG:%s\n", 
			ex_valid.value.integer, 
			ex_pc.value.integer, 
			ex_opa.value.integer, 
			ex_opb.value.integer, 
			stage_delays[EX], 
			stage_regs[EX]);
	fprintf(outfp, "$$$MEM:\tVLD:%d\tPC:%x\tDELAY:%f\nREG:%s\n", 
			mem_valid.value.integer, 
			mem_pc.value.integer, 
			stage_delays[MEM], 
			stage_regs[MEM]);
	fprintf(outfp, "$$$WB:\tVLD:%d\tPC:%x\tDELAY:%f\nREG:%s\n", 
			wb_valid.value.integer, 
			wb_pc.value.integer, 
			stage_delays[WB], 
			stage_regs[WB]);
	fprintf(outfp, "$$$END OF CYCLE\n\n");
	fclose(outfp);

	unsigned i;	
	for (i = 0; i < 6; ++i) {
		stage_delays[i] = 0;
		strcpy(stage_regs[i], "not valid");
	}
	return 0;
}

int reg_acc(char *user_data)
{
	vpiHandle systfref, argsiter, argh;
	systfref = vpi_handle(vpiSysTfCall, NULL); // get system function that invoked c routine
	argsiter = vpi_iterate(vpiArgument, systfref); // get iterator (list) of passed arguments


	// sim time
	s_vpi_time time;
	time.type = vpiSimTime;
	vpi_get_time(NULL, &time);
	//vpi_printf("\n\n@ %d\n", time.low);


	// start time
	argh = vpi_scan(argsiter); // get the one argument - add loop for more args

	if (!argh)
	{
		vpi_printf("$VPI missing parameter: time\n");
		return 0;
	}
	
	s_vpi_value startTime;
	startTime.format = vpiRealVal;
	vpi_get_value(argh, &startTime);
	//vpi_printf("start @ %6.2f\n", startTime.value.real);


	// end time
	argh = vpi_scan(argsiter); // get the one argument - add loop for more args

	if (!argh)
	{
		vpi_printf("$VPI missing parameter: time\n");
		return 0;
	}
	
	s_vpi_value lastTime;
	lastTime.format = vpiRealVal;
	vpi_get_value(argh, &lastTime);
	//vpi_printf("last  @ %6.2f\n", lastTime.value.real);


	// flip-flop name
	argh = vpi_scan(argsiter); // get the one argument - add loop for more args
	if (!argh)
	{
		vpi_printf("$VPI missing parameter: Flip-Flop Name\n");
		return 0;
	}
	s_vpi_value FFname;
	FFname.format = vpiStringVal;
	vpi_get_value(argh, &FFname);
	char* name = FFname.value.str;
	//vpi_printf("@ %s\n", name);

	double delay = lastTime.value.real - startTime.value.real;
	
	//vpi_printf("\n\n@ %d\n", time.low);
	//vpi_printf("Start @ %4.3f\n", startTime.value.real);
	//vpi_printf("End   @ %4.3f\n", lastTime.value.real);
	//printf("Delay: %4.3f\nName: %s\n", delay, name);

	STAGE stage;

	if (strstr(name, "FAR") != NULL || strstr(name, "REBOOT") != NULL || strstr(name, "IFID_REG") != NULL || strstr(name, "INST_REG") != NULL) {
		stage = IF;
		//printf("IF STAGE\n");
	} else if (strstr(name, "IDOF_REG") != NULL || strstr(name, "DECODER") != NULL) {
		stage = ID;
		//printf("ID STAGE\n");
	} else if (strstr(name, "OFEX_REG") != NULL) {
		stage = OF;
		//printf("OF STAGE\n");
	} else if (strstr(name, "EXMEM_REG") != NULL || strstr(name, "MULT") != NULL || strstr(name, "Mult") != NULL) { 
		stage = EX;
		//printf("EX STAGE\n");
	} else if (strstr(name, "MEMWB_REG") != NULL) {
		stage = MEM;
		//printf("MEM STAGE\n");
	} else if (strstr(name, "PC_REG") != NULL || strstr(name, "CPSR_REG") != NULL) {
		stage = WB;
		//printf("ERROR: UNDEFINED STAGE!!!\n");
	} else if (strstr(name, "DFF_X") != NULL) {
		return 0;
		// junk
	} else {
		printf("\n\n\nWTF? %s\n\n\n", name);
		exit(1);
	}

	if (stage_delays[stage] < delay) {
		stage_delays[stage] = delay;
		strcpy(stage_regs[stage], name);
	}

	if (argh)
		vpi_free_object(argsiter);
	return 0;
}


