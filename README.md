# animation-size-reducer
Batch script to leverage ffmpeg and gifski to reduce the size of animated gif files.
----
# Installation
In order for this to function, you need to download the latest releases of the following tools:
1. [ffmpeg Essentials](https://www.gyan.dev/ffmpeg/builds/) 
2. [Gifski CLI binaries](https://gif.ski/)

Extract the downloaded archives and place the binaries inside the bin folder. Your file structure should mirror:
* animation-size-reducer
  * bin
    * ffmpeg.exe
    * ffprobe.exe
    * gifski.exe
  * input
  * output
  * convert.bat

Once you have everything in the right place, just drop some .gif files into the 'input' folder, run 'converter.bat', and wait for it to complete.
