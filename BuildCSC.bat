
set CURRENT_ROOT=%~dp0
cd %CURRENT_ROOT%

set CSCProj=%CURRENT_ROOT%src\Compilers\CSharp\csc\csc.csproj
dotnet publish %CSCProj% ^
    -c Release ^
    -r win10-x64 ^
    -o %CURRENT_ROOT%Output\Win64 ^
    -f netcoreapp3.1 ^
    --self-contained true ^
    /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:PublishReadyToRun=true ^
    /p:EnableSourceLink=false
dotnet publish %CSCProj% ^
    -c Release ^
    -r osx-x64 ^
    -o %CURRENT_ROOT%\Output\Mac ^
    -f netcoreapp3.1 ^
    --self-contained true ^
    /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:EnableSourceLink=false
dotnet publish %CSCProj% ^
    -c Release ^
    -r linux-x64 ^
    -o %CURRENT_ROOT%\Output\Linux ^
    -f netcoreapp3.1 ^
    --self-contained true ^
    /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:EnableSourceLink=false

set VBCSCCompilerProj=%CURRENT_ROOT%src\Compilers\Server\VBCSCompiler\VBCSCompiler.csproj
dotnet publish %VBCSCCompilerProj% -c Release -r win10-x64 -o %CURRENT_ROOT%Output\Win64 -f netcoreapp3.1 --self-contained true /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:PublishReadyToRun=true ^
    /p:EnableSourceLink=false
dotnet publish %VBCSCCompilerProj% -c Release -r osx-x64 -o %CURRENT_ROOT%Output\Mac -f netcoreapp3.1 --self-contained true /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:EnableSourceLink=false
dotnet publish %VBCSCCompilerProj% -c Release -r linux-x64 -o %CURRENT_ROOT%Output\Linux -f netcoreapp3.1 --self-contained true /p:UseAppHost=true ^
    /p:UseShippingAssemblyVersion=true ^
    /p:OfficialBuild=true ^
    /p:UsingToolIbcOptimization=false ^
    /p:UsingToolVisualStudioIbcTraining=false ^
    /p:EnableSourceLink=false

pause