Push-Location objects
Get-ChildItem -Recurse -File | % {
  $obj = Resolve-Path -Relative $_.FullName;
  $dir = Split-Path -Path $obj;
  mkdir ..\out\$dir -Force;
  ..\fxc.exe /dumpbin $obj > ..\out\$obj.hlsl
}
Pop-Location
