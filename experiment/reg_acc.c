#include "stdlib.h"
#include "stdio.h"
#include "vpi_user.h"

static unsigned cycle = 0;
static double max_delay = 0.0;
FILE *fp;

int print_max_delay(char *user_data)
{
	vpiHandle systfref, argsiter, argh;
	systfref = vpi_handle(vpiSysTfCall, NULL);
	argsiter = vpi_iterate(vpiArgument, systfref);

	// sim time
	s_vpi_time time;
	time.type = vpiSimTime;
	vpi_get_time(NULL, &time);
	//vpi_printf("\n\n@ %d\n", time.low);

	if (cycle == 0)
	{
		fp = fopen("delay.out", "w");
		if (fp == NULL)
		{
			fprintf(stderr, "Can't open file!\n");
			exit(1);
		}
		fclose(fp);
	}
	else
	{
		fp = fopen("delay.out", "a");
		if (fp == NULL)
		{
			fprintf(stderr, "Can't open file!\n");
			exit(1);
		}
		fprintf(fp, "%f\n", max_delay);
		fclose(fp);
		max_delay = 0.0;
	}

	cycle++;
	//printf("$$$START CYCLE: %d @ %4.3d\n", cycle++, time.low);

	//argh = vpi_scan(argsiter);
	//if (!argh)
	//{
	//	vpi_printf("$VPI missing parameter\n");
	//	return 0;
	//}

	//s_vpi_value a;
	//a.format = vpiIntVal;
	//vpi_get_value(argh, &a);


	//argh = vpi_scan(argsiter);
	//if (!argh)
	//{
	//	vpi_printf("$VPI missing parameter\n");
	//	return 0;
	//}

	//s_vpi_value b;
	//b.format = vpiIntVal;
	//vpi_get_value(argh, &b);

	//argh = vpi_scan(argsiter);
	//if (!argh)
	//{
	//	vpi_printf("$VPI missing parameter\n");
	//	return 0;
	//}

	//s_vpi_value cin;
	//cin.format = vpiIntVal;
	//vpi_get_value(argh, &cin);
	//
	//argh = vpi_scan(argsiter);
	//if (!argh)
	//{
	//	vpi_printf("$VPI missing parameter\n");
	//	return 0;
	//}

	//s_vpi_value sel;
	//sel.format = vpiIntVal;
	//vpi_get_value(argh, &sel);
			
	//printf("$$$Test: a = %d\tb = %d\tcin = %d\tsel = %d\n", a.value.integer, b.value.integer, cin.value.integer, sel.value.integer);
	//printf("$$$Delay: %4.3f ns\n", max_delay);
	//max_delay = 0.0;
	//printf("$$$FINISH\n\n");
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

	// speculative value
	argh = vpi_scan(argsiter); // get the one argument - add loop for more args

	if (!argh)
	{
		vpi_printf("$VPI missing parameter: Speculative Value\n");
		return 0;
	}
	s_vpi_value clkValue;
	clkValue.format = vpiIntVal;
	vpi_get_value(argh, &clkValue);
	//vpi_printf("Value: %d/\t", clkValue.value.integer);

	// razor value
	argh = vpi_scan(argsiter); // get the one argument - add loop for more args
	if (!argh)
	{
		vpi_printf("$VPI missing parameter: Final Value\n");
		return 0;
	}
	
	s_vpi_value lateValue;
	lateValue.format = vpiIntVal;
	vpi_get_value(argh, &lateValue);

	//vpi_printf("%d\n\n", lateValue.value.integer);

	double delay = lastTime.value.real - startTime.value.real;
	
	//vpi_printf("\n\n@ %d\n", time.low);
	//vpi_printf("Start @ %4.3f\n", startTime.value.real);
	//vpi_printf("End   @ %4.3f\n", lastTime.value.real);
	//printf("Critial Delay: %4.3f\nName: %s\nsize of name: %d\n", delay, name, strlen(name));


	if (strstr(name, "sum_reg")!=NULL)
	{
		max_delay = (max_delay <  delay) ? delay:  max_delay;
		//printf("@Name: %s\tdelay: %f\n", name, delay);
	}
	if (argh)
		vpi_free_object(argsiter);
	return 0;
}


