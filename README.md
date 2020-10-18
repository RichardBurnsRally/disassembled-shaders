`objects`: The original shader objects from the game

`disassembled`: The disassembled original shaders

`src`: The manually decompiled shader source

Reference for vertex shaders:
https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx9-graphics-reference-asm-vs-1-1

Reference for pixel shaders:
https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx9-graphics-reference-asm-ps-1-x

Reference for HLSL functions:
https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl-intrinsic-functions

Reference for input/output semantics:
https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/dx-graphics-hlsl-semantics#pixel-shader-semantics

## Disassembly

The shaders can be disassembled by the PowerShell script `disassemble.ps1`.

This will take the shader object files from `objects`, disassemble them, and put
them in a folder called `out`.

## Compiling from HLSL source

Any shaders which have been manually decompiled are available in `src`. They may
not actually work, or be fully decompiled!

To compile a pixel shader:

```powershell
.\fxc.exe .\src\PixelShaders\fog\RLDoubleTexture.hlsl /Tps_1_1 /LD /FoRLDoubleTexture.pso
```

```powershell
.\fxc.exe .\src\VertexShaders\fog\RLDoubleTexture.hlsl /Tvs_1_1 /LD /FoRLDoubleTexture.vso
```

You can drag the output file into the appropriate game subfolder, and relaunch
your game to test.
