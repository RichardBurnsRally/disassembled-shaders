Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 8 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLDoubleTextureSpecularShadow.nvp"
    def c0, 1, 1, 1, 1

#line 16
    tex t0
    tex t1
    tex t2
    tex t3

#line 22
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w
    mul_sat r1.xyz, v0, t1
  + mul_sat r1.w, v0.w, t1.w

#line 29
    mul_sat r1.w, t1.w, v0.w

#line 32
    lrp_sat r0.xyz, r1.w, r1, r0

#line 35
    mul_x4_sat r1.xyz, t2, v1.w
    add_sat r0.xyz, r0, r1

#line 39
    mad_sat r0.xyz, r0, t3, v1
  + mov r1.w, c4.w

#line 43
    lrp r0.xyz, r1.w, r0, c4

// approximately 12 instruction slots used (4 texture, 8 arithmetic)
