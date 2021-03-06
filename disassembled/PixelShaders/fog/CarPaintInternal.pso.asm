Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 10 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarPaintInternal.nvp"
    def c0, 0, 1, 0, 1
    tex t0
    tex t1
    tex t2

#line 17
    mul r0.xyz, t0, v0
  + mov r0.w, c4.w

#line 21
    mad r1.xyz, t1, v1.w, v1

#line 28
    add r1.xyz, r1, r0

#line 31
    mul r0.xyz, t2, v0
  + mul_sat r1.w, v0.w, t2.w

#line 36
    lrp r0.xyz, r1.w, r0, r1

#line 40
    lrp r0.xyz, r0.w, r0, c4

// approximately 9 instruction slots used (3 texture, 6 arithmetic)
