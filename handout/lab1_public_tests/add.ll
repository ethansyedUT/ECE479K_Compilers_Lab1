declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

entry:
	%vtpm.0 = add i32 1, 2
	ret i32 %vtpm.0
}

@.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.1 = call i32 @Main_main(  )
	%vtpm.2 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.3 = call i32(i8*, ... ) @printf( i8* %vtpm.2, i32 %vtpm.1 )
	ret i32 0
}

