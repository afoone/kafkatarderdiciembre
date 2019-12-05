@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  2019kafkatardes startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and 2019KAFKATARDES_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\2019kafkatardes.jar;%APP_HOME%\lib\guava-23.0.jar;%APP_HOME%\lib\slf4j-simple-1.7.29.jar;%APP_HOME%\lib\kafka-clients-2.3.1.jar;%APP_HOME%\lib\elasticsearch-rest-high-level-client-7.4.2.jar;%APP_HOME%\lib\jsr305-1.3.9.jar;%APP_HOME%\lib\error_prone_annotations-2.0.18.jar;%APP_HOME%\lib\j2objc-annotations-1.1.jar;%APP_HOME%\lib\animal-sniffer-annotations-1.14.jar;%APP_HOME%\lib\slf4j-api-1.7.29.jar;%APP_HOME%\lib\zstd-jni-1.4.0-1.jar;%APP_HOME%\lib\lz4-java-1.6.0.jar;%APP_HOME%\lib\snappy-java-1.1.7.3.jar;%APP_HOME%\lib\elasticsearch-7.4.2.jar;%APP_HOME%\lib\elasticsearch-rest-client-7.4.2.jar;%APP_HOME%\lib\mapper-extras-client-7.4.2.jar;%APP_HOME%\lib\parent-join-client-7.4.2.jar;%APP_HOME%\lib\aggs-matrix-stats-client-7.4.2.jar;%APP_HOME%\lib\rank-eval-client-7.4.2.jar;%APP_HOME%\lib\lang-mustache-client-7.4.2.jar;%APP_HOME%\lib\elasticsearch-x-content-7.4.2.jar;%APP_HOME%\lib\elasticsearch-cli-7.4.2.jar;%APP_HOME%\lib\elasticsearch-core-7.4.2.jar;%APP_HOME%\lib\elasticsearch-secure-sm-7.4.2.jar;%APP_HOME%\lib\elasticsearch-geo-7.4.2.jar;%APP_HOME%\lib\lucene-core-8.2.0.jar;%APP_HOME%\lib\lucene-analyzers-common-8.2.0.jar;%APP_HOME%\lib\lucene-backward-codecs-8.2.0.jar;%APP_HOME%\lib\lucene-grouping-8.2.0.jar;%APP_HOME%\lib\lucene-highlighter-8.2.0.jar;%APP_HOME%\lib\lucene-join-8.2.0.jar;%APP_HOME%\lib\lucene-memory-8.2.0.jar;%APP_HOME%\lib\lucene-misc-8.2.0.jar;%APP_HOME%\lib\lucene-queries-8.2.0.jar;%APP_HOME%\lib\lucene-queryparser-8.2.0.jar;%APP_HOME%\lib\lucene-sandbox-8.2.0.jar;%APP_HOME%\lib\lucene-spatial-8.2.0.jar;%APP_HOME%\lib\lucene-spatial-extras-8.2.0.jar;%APP_HOME%\lib\lucene-spatial3d-8.2.0.jar;%APP_HOME%\lib\lucene-suggest-8.2.0.jar;%APP_HOME%\lib\hppc-0.8.1.jar;%APP_HOME%\lib\joda-time-2.10.3.jar;%APP_HOME%\lib\t-digest-3.2.jar;%APP_HOME%\lib\HdrHistogram-2.1.9.jar;%APP_HOME%\lib\log4j-api-2.11.1.jar;%APP_HOME%\lib\jna-4.5.1.jar;%APP_HOME%\lib\httpclient-4.5.8.jar;%APP_HOME%\lib\httpcore-4.4.11.jar;%APP_HOME%\lib\httpasyncclient-4.1.4.jar;%APP_HOME%\lib\httpcore-nio-4.4.11.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\compiler-0.9.3.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\jackson-core-2.8.11.jar;%APP_HOME%\lib\jackson-dataformat-smile-2.8.11.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.8.11.jar;%APP_HOME%\lib\jackson-dataformat-cbor-2.8.11.jar;%APP_HOME%\lib\jopt-simple-5.0.2.jar

@rem Execute 2019kafkatardes
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %2019KAFKATARDES_OPTS%  -classpath "%CLASSPATH%" App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable 2019KAFKATARDES_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%2019KAFKATARDES_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
