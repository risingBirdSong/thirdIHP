IHP.NameSupport: ParseErrorBundle {bundleErrors = TrivialError 4 (Just (Tokens (' ' :| ""))) (fromList [Tokens ('_' :| ""),Label ('a' :| "lphanumeric character"),EndOfInput]) :| [], bundlePosState = PosState {pstateInput = "body ", pstateOffset = 0, pstateSourcePos = SourcePos {sourceName = "", sourceLine = Pos 1, sourceColumn = Pos 1}, pstateTabWidth = Pos 8, pstateLinePrefix = ""}} (value to be transformed: "body ")
CallStack (from HasCallStack):





    Ambiguous occurrence ‘postId’
    It could refer to
       either the field ‘postId’,
              imported from ‘Web.Controller.Prelude’ at Web/Controller/Comments.hs:3:1-29
              (and originally defined in ‘Web.Types’ at Web/Types.hs:15:24-29)
           or the field ‘postId’,
              imported from ‘Web.Controller.Prelude’ at Web/Controller/Comments.hs:3:1-29
              (and originally defined in ‘Generated.Types’
                 at build/Generated/Types.hs:124:57-62)
   |
14 |     action NewCommentAction { postId } = do
   |                          