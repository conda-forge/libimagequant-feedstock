@echo on

mkdir build
cd build

:: LIB_INSTALL_DIR & CMAKE_BINARY_DIR used by upstream CMakeLists.txt
cmake ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DLIB_INSTALL_DIR:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_BINARY_DIR:PATH="%LIBRARY_BIN%" ^
    ..
if %ERRORLEVEL% neq 0 exit 1

cmake --build . --config Release
if %ERRORLEVEL% neq 0 exit 1

cmake --install . --config Release
if %ERRORLEVEL% neq 0 exit 1
