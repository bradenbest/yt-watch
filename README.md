# yt-watch

Easily watch youtube videos with vlc.

## Introduction / Usage

yt-watch reads a line from a text file and uses it as input to vlc. To use it, you need a textfile that looks like this:

    https://www.youtube.com/watch?v=Y7swxtYxf0e # Optional title 1
    https://www.youtube.com/watch?v=W887niA_v9W # Optional title 2
    https://www.youtube.com/watch?v=lrMRmIowDFC # Optional title 3
    https://www.youtube.com/watch?v=cmDhdheUoue # Optional title 4
    https://www.youtube.com/watch?v=qO7VuDktLHK # Optional title 5

let's say the file's name is youtubevids.txt.

To watch Optional title 5, simply

    $ yt-watch youtubevids.txt 5

Of course, it is not always that simple. It is usually easier to leave the second arg blank, and let the script ask you which link you want.

    $ yt-watch youtubevids.txt
        1  https://www.youtube.com/watch?v=Y7swxtYxf0e # Optional title 1
        2  https://www.youtube.com/watch?v=W887niA_v9W # Optional title 2
        3  https://www.youtube.com/watch?v=lrMRmIowDFC # Optional title 3
        4  https://www.youtube.com/watch?v=cmDhdheUoue # Optional title 4
        5  https://www.youtube.com/watch?v=qO7VuDktLHK # Optional title 5
    choose a line number: 

To set a file as default:

    $ yt-watch --setfile
    Please enter the name of the new default file: youtubevids.txt
    $ yt-watch
        1  https://www.youtube.com/watch?v=Y7swxtYxf0e # Optional title 1
        2  https://www.youtube.com/watch?v=W887niA_v9W # Optional title 2
        3  https://www.youtube.com/watch?v=lrMRmIowDFC # Optional title 3
        4  https://www.youtube.com/watch?v=cmDhdheUoue # Optional title 4
        5  https://www.youtube.com/watch?v=qO7VuDktLHK # Optional title 5
    choose a line number: 

And for help within the script:

    $ yt-watch --help
      or
    $ yt-watch help

This will give basic help, and a list of the `--actions` you can use. If you start a new bash session, you can autocomplete them by hitting `--<tab><tab>`

If you were curious, those arent real videos. I just wanted to make a good example.

## Installation and setup

To install, just run

    $ sudo make install

To uninstall, run

    $ sudo make uninstall

To set it up, either edit ~/.yt-watchrc with the full path to the file you want to use as the source, or run

    $ yt-watch --setfile

which will prompt you for a filename, and the next time you run yt-watch, it will use that file, even if no file is provided in the first argument.

For more detail on usage, see `Introduction / Usage` above.
