param($installPath, $toolsPath, $package, $project)

if ($project.Type -eq 'Web Site') {
    $projectDir = $project.Properties.Item('FullPath').Value

    $assemblyDestDir = Join-Path $projectDir 'bin/x64'
    if (!(Test-Path $assemblyDestDir)) {
        New-Item -ItemType Directory -Force -Path $assemblyDestDir
    }

    $assemblySourceFiles = Join-Path $installPath 'runtimes/win-x64/native/*.*'
    Copy-Item $assemblySourceFiles $assemblyDestDir -Force
}