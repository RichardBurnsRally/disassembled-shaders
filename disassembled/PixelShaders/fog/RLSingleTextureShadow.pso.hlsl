Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 6 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLSingleTextureShadow.nvp"
    def c0, 1, 0, 0, 1

#line 12
    tex t0
    tex t1
    mul_sat r0.xyz, v0, t0
  + mov r0.w, t0.w

#line 19
    mul_sat r0, r0, t1

#line 22
    add_sat r0.xyz, r0, v1
    mov r0, c0

// approximately 6 instruction slots used (2 texture, 4 arithmetic)
