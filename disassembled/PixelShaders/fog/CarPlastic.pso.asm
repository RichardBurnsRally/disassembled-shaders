Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 11 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarPlastic.nvp"
    def c0, 1, 0, 0, 1
    tex t0

#line 16
    mad r0.xyz, t0, v0, v1
  + mov r0.w, t0.w
    mov r1.w, c4.w

#line 22
    lrp r0.xyz, r1.w, r0, c4

// approximately 4 instruction slots used (1 texture, 3 arithmetic)
