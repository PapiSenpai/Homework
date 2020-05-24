// assemble: g++ scanf_2.s -g -o scanf_2
//
// program purpose: demonstrate simple usage of scanf using a
// scan string with two format specifiers
//
// key points to keep in mind:
// 1. put all format strings and string literals in .section .rodata
// 2. adhere to the ARM Architecture Procedure Call Standard
// 3. keep number of format specifiers to no more than 3.
//

.global main

.align 4
.section .rodata
// all constant data goes here - such as named constants
// put our format string(s) in this section
// syntax for the format string:
// format_string_label: .asciz " .... your string literal inside the quotes .... "
my_string: 	.asciz "Hello, this program demonstrates using scanf with three inputs....\n"
prompt:	   	.asciz "Enter three signed 32-bit integers: "
scan_str:  	.asciz "%d %d %d"	// scan string for scanning in three 32  					 bit signed integers with
					// a white space (space, tab, or enter)    				          between input values

output:		.asciz "The sum of the entered integers is %d!\n"

.align 4
.section .data
value1:		.word	0
value2:		.word	0
value3:		.word	0

.align 4
.text
main: 	push {lr} // we need to save LR's content for later and call to printf
		  // will overwrite it, if we do not save it, our program       		    cannot properly terminate

	ldr r0, =my_string	// printf requires address of format string 				          to be in register r0
	bl printf		// call printf, we use the bl (branch with 				          link) instruction to do this

	ldr r0, =prompt		// load address of prompt into r0
	bl printf		// print the prompt out to the screen

	ldr r0, =scan_str	// load address of scan_str for scanf
	ldr r1, =value1		// load address of location to store for input, scanf needs to
				// know where to store the first user input!
	ldr r2, =value2		// load address of location to store second input, scanf needs to
				// know where to store the second user input!
	ldr r3, =value3		// load address of location to store third input, scanf needs to
	bl scanf		// call scanf and get the user input

	ldr r0, =output		// load into r0 address of our output format   					  string
	ldr r1, =value1		// load into R1 the address of value1
	ldr r2, =value2		// load into R2 the address of value2
	ldr r3, =value3		// load into R3 the address of value3
	ldr r1, [r1]		// load into R1 the data stored at address in  					  old R1
	ldr r2, [r2]		// load into R2 the data stored at address in  					  old R2
	ldr r3, [r3]		// load into R3 the data stored at address in					  old R3
	add r1, r2
	add r1, r3
	bl printf		// call printf

	mov r0, #0 // return code for your program (must be 8 bits)
	pop {pc}
// assemble: g++ scanf_2.s -g -o scanf_2
//
// program purpose: demonstrate simple usage of scanf using a
// scan string with two format specifiers
//
// key points to keep in mind:
// 1. put all format strings and string literals in .section .rodata
// 2. adhere to the ARM Architecture Procedure Call Standard
// 3. keep number of format specifiers to no more than 3.
//

// assemble: g++ scanf_2.s -g -o scanf_2
//
// program purpose: demonstrate simple usage of scanf using a
// scan string with two format specifiers
//
// key points to keep in mind:
// 1. put all format strings and string literals in .section .rodata
// 2. adhere to the ARM Architecture Procedure Call Standard
// 3. keep number of format specifiers to no more than 3.
//

// assemble: g++ scanf_2.s -g -o scanf_2
//
// program purpose: demonstrate simple usage of scanf using a
// scan string with two format specifiers
//
// key points to keep in mind:
// 1. put all format strings and string literals in .section .rodata
// 2. adhere to the ARM Architecture Procedure Call Standard
// 3. keep number of format specifiers to no more than 3.
//


