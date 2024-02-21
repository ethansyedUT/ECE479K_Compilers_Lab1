declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

entry:
	%vtpm.0 = alloca i32
	%vtpm.1 = icmp slt i32 5, 7
	br i1 %vtpm.1, label %btrue0, label %bfalse0

btrue0:
	%vtpm.2 = add i32 1, 2
	store i32 %vtpm.2, i32* %vtpm.0
	br label %end0

bfalse0:
	%vtpm.3 = add i32 5, 7
	store i32 %vtpm.3, i32* %vtpm.0
	br label %end0

end0:
	%vtpm.4 = load i32, i32* %vtpm.0
	ret i32 %vtpm.4
}

@.str = internal constant [25 x i8] c"Main_main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.5 = call i32 @Main_main(  )
	%vtpm.6 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.7 = call i32(i8*, ... ) @printf( i8* %vtpm.6, i32 %vtpm.5 )
	ret i32 0
}

