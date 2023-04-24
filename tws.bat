set source=Test
set exe=%source%_64
cd TwsApiC++\Test\Src
g++ -D _WIN64 -march=x86-64 -O2 -static -s -std=gnu++20 %source%.cpp -I..\..\Api -I..\..\Src -I..\..\..\source\PosixClient\Shared -I..\..\..\source\PosixClient\src -o ..\..\Api\%exe% ..\..\Api\TwsCppApi_64.dll -Wno-deprecated
cd ..\..\Api
@REM taskkill /F /IM cmd.exe /FI "WINDOWTITLE eq C:\WINDOWS\System32\cmd.exe*"
start cmd /k %exe%