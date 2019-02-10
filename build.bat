@echo off
wsl crystal build logger.cr --single-module --cross-compile --target x86_64-pc-windows-msvc
lib logger.o
cl bridge.c /Febridge /LD logger.lib pcre.lib gc.lib advapi32.lib libcmt.lib
cl main.c /link bridge.lib