set source=TwsApiL0
set exe=%source%_64
pushd TwsApiC++\Src
g++ -D _WIN64 -D CorrectAfxWinIncluded -shared -static -static-libgcc -static-libstdc++ -s -std=gnu++20 %source%.cpp -I..\Src -I..\..\source\PosixClient\Shared -I..\..\source\PosixClient\src -I..\Api -Wl,--no-as-needed -o ..\Api\TwsCppApi_64.dll -Wno-deprecated -lwsock32 -lws2_32 -lpthread
popd
