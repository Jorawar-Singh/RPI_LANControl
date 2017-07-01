;##############################################################################################################
; Inno Setup Install script for RPI_LANControl
; http://www.jrsoftware.org/isinfo.php
; This file is released under the 3-clause BSD license. See COPYING-BSD.
;##############################################################################################################
; modify this path where is RPI_LANControl directory
#define BinariesSourcePath "C:\Programs files\scilab-5.0\contrib\RPI_LANControl"
;
#define RPI_LANControl_version "1.0"
#define CurrentYear "2017"
#define RPI_LANControlDirFilename "RPI_LANControl"
;##############################################################################################################
[Setup]
; Debut Données de base à renseigner suivant version
SourceDir={#BinariesSourcePath}
AppName=Raspberry LAN Control
AppVerName=Raspberry LAN Control version 1.0
DefaultDirName={pf}\{#RPI_LANControlDirFilename}
InfoAfterfile=readme.txt
LicenseFile=license.txt
WindowVisible=true
AppPublisher=FOSSEE
BackColorDirection=lefttoright
AppCopyright=Copyright © {#CurrentYear}
Compression=lzma/max
InternalCompressLevel=normal
SolidCompression=true
VersionInfoVersion={#RPI_LANControl_version}
VersionInfoCompany=FOSSEE
;##############################################################################################################
[Files]
; Add here files that you want to add
Source: loader.sce; DestDir: {app}
Source: etc\RPI_LANControl.quit; DestDir: {app}\etc
Source: etc\RPI_LANControl.start; DestDir: {app}\etc
Source: macros\buildmacros.sce; DestDir: {app}\macros
Source: macros\lib; DestDir: {app}\macros
;Source: macros\names; DestDir: {app}\macros
Source: macros\*.sci; DestDir: {app}\macros
Source: macros\*.bin; DestDir: {app}\macros
;Source: sci_gateway\loader_gateway.sce; DestDir: {app}\sci_gateway
;Source: sci_gateway\c\loader.sce; DestDir: {app}\sci_gateway\c
;Source: sci_gateway\c\skeleton_c.dll; DestDir: {app}\sci_gateway\c
;Source: sci_gateway\cpp\loader.sce; DestDir: {app}\sci_gateway\cpp
;Source: sci_gateway\cpp\skeleton_cpp.dll; DestDir: {app}\sci_gateway\cpp
;Source: sci_gateway\fortran\loader.sce; DestDir: {app}\sci_gateway\fortran
;Source: sci_gateway\fortran\skeleton_fortran.dll; DestDir: {app}\sci_gateway\fortran
;Source: src\c\libcsum.dll; DestDir: {app}\src\c
;Source: src\c\loader.sce; DestDir: {app}\src\c
;Source: src\fortran\libfsum.dll; DestDir: {app}\src\fortran
;Source: src\fortran\loader.sce; DestDir: {app}\src\fortran
;Source: tests\*.*; DestDir: {app}\tests; Flags: recursesubdirs
;Source: includes\*.h; DestDir: {app}\includes; Flags: recursesubdirs
;Source: locales\*.*; DestDir: {app}\locales; Flags: recursesubdirs
Source: demos\*.*; DestDir: {app}\locales; Flags: recursesubdirs
;
;##############################################################################################################
