# Advanced Bash

## Print system information
`uname` or `uname -s`

Get everything about the kernel version:
`uname -a` or `uname --all`

Get the release:
```
uname -r
uname -m
uname -i
```

Get the architecture of the processor:
`uname -p`

`uname -o`

You can combine them:
`uname -si`

## What's a flag?
Like a switch, it specifies what you want the command to do.

mkdir <folder name>

To see hidden files/folders too:
ls -a

Go up 2 levels:
../..

Go to home directory
cd ~

Go to root directory
cd /

See file plus permissions:
ls -l

## Relative vs absolute path:
### Relative Path
Where is from me

### Absolute Path
Where is it from the root

For Linux/Mac
/users/username/Documents/myfile.txt

For Windows
C:\users\username\Documents\myfile.txt

For Web URLs
https://www.somesite.com/folder/subfolder/page.html

## Editing files
### Make an empty file

touch <file to make>

### Edit the file
nano <file name to edit>
vim <file name to edit>

### Show a file's contents on the screen
cat <the file to show>

## Copying files
cp <file to copy> <new file which is a copy>

Copy file to another folder:
cp <file to copy> <folder>/<new file which is a copy>

cp -rf <folder to copy> <new folder which is a copy>

Synch the changes from one folder to another
rsync -r <folder with changes> <folder you want to update>

mv <file> <where to move>

Rename a file
mv <current file name> <new file name>

## Getting help
<command> --help

man <command>

Search for a keyword in the manual:
man -k change

Search for a keyword in a file:
grep <word to search for> <file to search in>

Search for a keyword in the current folder
grep <word to search for> *

Search for a keyword in the current folder and everything within it (including subfolders)
grep <word to search for> * -R

## Permissions

### Seeing permissions

* r means read
* w means write
* x means execute (if it's a program or script)

See permissions using `ls -l`

This lists permissions in this order:
owner (first 'rwx'), group (second 'rwx'), other (third 'rwx')

### Modifying permissions

Note: you might need to use `sudo` in front of the command.

chmod u-x <filename>
chmod 777

## Processes

See top processes: `top`
See your processes: `ps`

### Killing processes

1. Create a process: sleep 120 &
   Note: `&` makes it run in the background
2. Check the processes you're running: ps
3. Kill the process you started: kill <PID from ps command in step 2>
   Note: add the switch `-9` to force a process to be killed.

You can STOP (not KILL) a process that's taken over your terminal by doing CTRL+Z.  You can then re-start it using `fg` (bring it back to the foreground).

sudo apt install tree -y
