set fibSeq to {}
set x to (text returned of (display dialog "What number do you want?" default answer "128"))
set x to x as integer

repeat with y from 1 to x
    if (y = 1 or y = 2) then
        copy 1 to the end of fibSeq
    else
        copy( (item (y - 1) of fibSeq) + (item (y - 2) of fibSeq)) to the end of fibSeq
    end if
end repeat

return item x of fibSeq
