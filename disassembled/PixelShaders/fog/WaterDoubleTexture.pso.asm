Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 8 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\WaterDoubleTexture.nvp"
    def c0, 1, 0, 0, 1

#line 17
    tex t0
    tex t1
    tex t2

#line 23
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w
    mul_sat r1.xyz, v0, t1
  + mul_sat r1.w, v0.w, t1.w

#line 30
    mul_sat r1.w, t1.w, v0.w

#line 33
    lrp_sat r0.xyz, r1.w, r1, r0

#line 41
    add_sat r0.xyz, r0, v1

// approximately 8 instruction slots used (3 texture, 5 arithmetic)
