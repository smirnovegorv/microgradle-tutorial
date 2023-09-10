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
) else (
    echo Unknown command: %1
)