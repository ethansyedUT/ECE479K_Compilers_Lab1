declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

main:
	%vtpm.0 = icmp slt i32 5, 7
	%vtpm.1 = icmp slt i32 5, 7
	%vtpm.2 = add i32 5, 7
	%vtpm.3 = icmp slt i32 7, 5
	%vtpm.4 = icmp slt i32 7, 5
	%vtpm.5 = add i32 5, 7
	%vtpm.6 = icmp sle i32 5, 7
	%vtpm.7 = icmp sle i32 5, 7
	%vtpm.8 = add i32 5, 7
	%vtpm.9 = icmp sle i32 5, 5
	%vtpm.10 = icmp sle i32 5, 5
	%vtpm.11 = add i32 5, 7
	%vtpm.12 = icmp sle i32 7, 5
	%vtpm.13 = icmp sle i32 7, 5
	%vtpm.14 = add i32 5, 7
	%vtpm.15 = icmp eq i32 5, 5
	%vtpm.16 = icmp eq i32 5, 5
	%vtpm.17 = add i32 5, 7
	%vtpm.18 = icmp eq i32 7, 5
	%vtpm.19 = icmp eq i32 7, 5
	%vtpm.20 = add i32 5, 7
	ret i32 %vtpm.20
}

@.str = internal constant [25 x i8] c"Main_main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.21 = call i32 @Main_main(  )
	%vtpm.22 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.23 = call i32(i8*, ... ) @printf( i8* %vtpm.22, i32 %vtpm.21 )
	ret i32 0
}

