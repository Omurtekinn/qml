:: Copyright 2014 <chaishushan{AT}gmail.com>. All rights reserved.
:: Use of this source code is governed by a BSD-style
:: license that can be found in the LICENSE file.

@echo off

cd %~dp0
setlocal

:: NMake: goqgl_4_0core.dll
qmake
nmake clean
nmake release

:: MinGW: generate libgoqgl_4_0core.a
dlltool -dllname goqgl_4_0core.dll --def goqgl.def --output-lib libgoqgl_4_0core.a

:: install
copy goqgl_4_0core.dll %QTDIR%\bin
