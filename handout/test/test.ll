declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
@.str = internal constant [25 x i8] c"Main_main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.0 = call i32 @Main_main(  )
	%vtpm.1 = getelementptr [25 x i8],  ,  
	%vtpm.2 = call [2 x i32**] @printf( i32 %vtpm.1, i32 %vtpm.0 )
	ret i32 %vtpm.0
}

