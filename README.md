# archive service script (ass)

## Purpose
If you have a lot of memes or media about a certain topic (using Pepe the Frog as an example), you might want to archive them in the following structure:
```
~/memes
|--pepe-00.png
|--pepe-01.png
|--pepe-02.txt
|--pepe-03.webm
|--pepe-04.mp4
```
This is tedious to do manually.

## Usage
```
./archive.sh <tag> <file> (optional file) (optional file)...
```

## Installing
Download `archive.sh` and symlink it to your `PATH`

Set `MEME_FOLDER` in your `.zshrc` or similar (the default is `~/memes`)

If you want to download it from my server, feel free to do so: [storage.queue.bot/f/archive.sh](https://storage.queue.bot/f/archive.sh) (SHA256 `5b4bf8dbbbf1bc3fee46e8edbf443b3ce3630d7128813d0eadd74b566736aae7`)

## License
Do whatever you want. [unlicense.org](https://unlicense.org)
```
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>
```