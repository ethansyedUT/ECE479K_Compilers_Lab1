; ModuleID = 'test.ll'
source_filename = "test.ll"

@.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #0

declare void @abort() local_unnamed_addr

define i32 @Main_main() local_unnamed_addr {
entry:
  tail call void @abort()
  ret i32 0
}

define i32 @main() local_unnamed_addr {
entry:
  tail call void @abort()
  %vtpm.3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  ret i32 0
}

attributes #0 = { nofree nounwind }
