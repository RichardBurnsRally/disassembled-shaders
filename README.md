The shaders can be disassembled by the PowerShell script `disassemble.ps1`.

This will take the shader object files from `objects`, disassemble them, and put
them in a folder called `out`.

Note that despite adding the `hlsl` extension, it is not actually decompiled to
hlsl, it just helps having some syntax highlighting.
