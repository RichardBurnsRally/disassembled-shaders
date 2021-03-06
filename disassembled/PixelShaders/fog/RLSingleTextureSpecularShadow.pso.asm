Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 9 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLSingleTextureSpecularShadow.nvp"
    def c0, 1, 0, 0, 1

#line 17
    tex t0
    tex t1
    tex t2

#line 22
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w

#line 33
    mad_sat r0.xyz, r0, t2, v1
    mov r0, c0

// approximately 6 instruction slots used (3 texture, 3 arithmetic)
