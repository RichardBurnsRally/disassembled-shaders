Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 10 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarPaint1.nvp"
    def c0, 0, 1, 0, 1
    tex t0
    tex t1
    tex t2
    tex t3

#line 19
    mul_sat t2, t2.w, c3.w

#line 22
    lrp r0.xyz, t2.w, c3, t0
  + mov_sat r0.w, c4.w

#line 26
    mul r0.xyz, r0, v0

#line 31
    mad r1.xyz, t1, v1.w, v1

#line 34
  + mul r1.w, 1-t2.z, t0.w

#line 37
    mad r1.xyz, r1, r1.w, r0

#line 40
    mul r0.xyz, t3, v0
  + mul_sat r1.w, v0.w, t3.w

#line 45
    lrp r0.xyz, r1.w, r0, r1

#line 48
    lrp r0.xyz, r0.w, r0, c4

// approximately 12 instruction slots used (4 texture, 8 arithmetic)
