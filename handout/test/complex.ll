declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

main:
	%vtpm.0 = add i32 1, 2
	%vtpm.1 = sub i32 4, 2
	%vtpm.2 = mul i32 4, 2
	%vtpm.3 = icmp slt i32 1, 2
	%vtpm.4 = icmp slt i32 2, 1
	%vtpm.5 = icmp sle i32 1, 2
	%vtpm.6 = icmp sle i32 2, 2
	%vtpm.7 = icmp sle i32 2, 3
	%vtpm.8 = icmp eq i32 2, 2
	%vtpm.9 = icmp eq i32 2, 1
	%vtpm.10 = sdiv i32 10, 5
	ret i32 0
}

@.str = internal constant [25 x i8] c"Main_main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.11 = call i32 @Main_main(  )
	%vtpm.12 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.13 = call i32(i8*, ... ) @printf( i8* %vtpm.12, i32 %vtpm.11 )
	ret i32 0
}

