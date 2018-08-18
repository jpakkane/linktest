@ECHO OFF

cl /nologo /c /Foliba.obj liba.c
cl /nologo /c /Foliba2.obj liba2.c
cl /nologo /c /Folibb.obj libb.c

cl /nologo /c /Fmain.obj main.c

lib /nologo /OUT:a.lib  liba.obj liba2.obj
lib /nologo /OUT:b.lib  libb.obj

link /nologo /OUT:prog.exe main.obj a.lib b.lib
