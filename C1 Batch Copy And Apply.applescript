(*
    Capture One script to batch copy and apply settings
    Created by @mjeightyfive
*)

use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

tell the application "Capture One 22"
    set editedFileExtension to "jpg"

    set AllVariants to get variants

    repeat with v in AllVariants
        set Img to parent image of v

        if extension of Img is editedFileExtension then
            copy adjustments v
        else
            select variant v
            apply adjustments v
        end if
    end repeat
end tell
