Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 11 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarRim.nvp"
    tex t0
    tex t1
    tex t2
    tex t3

#line 17
    mul r0.xyz, t0, v0
  + mov r0.w, t0.w

#line 23
    mov r1.xyz, v1
  + mov r1.w, c4.w

#line 27
    mad r0.xyz, r1, t2.w, r0

#line 30
    lrp r0.xyz, r1.w, r0, c4

// approximately 8 instruction slots used (4 texture, 4 arithmetic)
