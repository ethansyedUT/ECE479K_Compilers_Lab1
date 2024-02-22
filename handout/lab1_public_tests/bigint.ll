declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main_main() {

entry:
	ret i32 1874919423
}

@.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.0 = call i32 @Main_main(  )
	%vtpm.1 = getelementptr [25 x i8], [25 x i8]* @.str, i32 0, i32 0
	%vtpm.2 = call i32(i8*, ... ) @printf( i8* %vtpm.1, i32 %vtpm.0 )
	ret i32 0
}

