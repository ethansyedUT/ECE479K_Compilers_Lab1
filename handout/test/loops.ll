declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

entry:
	%vtpm.0 = alloca i32
	store i32 0, i32* %vtpm.0
	br label %loop0

loop0:
	%vtpm.1 = load i32, i32* %vtpm.0
	%vtpm.2 = icmp slt i32 %vtpm.1, 10
	br i1 %vtpm.2, label %body0, label %exit0

body0:
	%vtpm.3 = getelementptr i32, i32* %vtpm.0, i32 0
	store i32 10, i32* %vtpm.3
	br label %loop0

exit0:
	ret i32 0
}

@.str = internal constant [25 x i8] c"Main_main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.4 = call i32 @Main_main(  )
	%vtpm.5 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.6 = call i32(i8*, ... ) @printf( i8* %vtpm.5, i32 %vtpm.4 )
	ret i32 0
}

