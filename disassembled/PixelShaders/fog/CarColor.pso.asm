Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 5 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarColor.nvp"
    def c0, 1, 0, 0, 1

#line 9
    tex t0
    tex t1

#line 13
    lrp r0.xyz, t1.w, c3, t0
  + mov r0.w, t0.w

#line 17
    mul_sat r0.xyz, r0, v0

#line 21
    add_sat r0.xyz, r0, v1
  + mov r1.w, c4.w

#line 25
    lrp r0.xyz, r1.w, r0, c4

// approximately 6 instruction slots used (2 texture, 4 arithmetic)
