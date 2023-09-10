@echo off
if "%1"=="build" (
    echo Building...
    mkdir build
    dir /s /B *.java > build/sources.txt
    javac -d out/classes -cp lib/*;src @build/sources.txt
    cd out/classes
    jar cf ../HelloWorld.jar .
    echo Build complete
) else if "%1"=="run" (
    echo Running...
    call java -cp ./out/*;lib/* %2
) else if "%1"=="dependencies" (
    echo Resolving dependencies...
    mkdir lib
    java -jar ./ivy-2.5.2.jar  -retrieve "lib/[artifact]-[type]-[revision].[ext]
) else (
    echo Unknown command: %1
)