Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 5 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLDoubleTextureShadow.nvp"
    def c0, 1, 1, 0, 1

#line 12
    tex t0
    tex t1
    tex t2

#line 17
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w
    mul_sat r1.xyz, v0, t1
  + mul_sat r1.w, v0.w, t1.w

#line 24
    mul_sat r1.w, t1.w, v0.w

#line 27
    lrp_sat r0, r1.w, r1, r0

#line 30
    mul_sat r0, r0, t2

#line 33
    add_sat r0.xyz, r0, v1

// approximately 9 instruction slots used (3 texture, 6 arithmetic)
