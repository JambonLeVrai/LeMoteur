conan install . --output-folder=debug --build=missing --profile=debug --conf=tools.env.virtualenv:powershell=True
./debug/build/generators/conanbuild.ps1
cmake ./debug -G "Visual Studio 17 2022" -DCMAKE_TOOLCHAIN_FILE="generators/conan_toolchain.cmake" -DCMAKE_POLICY_DEFAULT_CMP0091=NEW