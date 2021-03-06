Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 10 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarGlass.nvp"
    def c0, 0, 0, 0, 0.5
    tex t0
    tex t1

#line 16
    mul r0.xyz, t0, v0
  + mul r0.w, v1.w, c0

#line 20
    mul r1, t1, t1
    mul r1.xyz, r1, v1.w
  + mov r1.w, c4.w

#line 26
    add r1.xyz, r1, v1
    add r0.xyz, r1, r0
  + add r0.w, r0.w, t0.w

#line 31
    lrp r0.xyz, r1.w, r0, c4

// approximately 8 instruction slots used (2 texture, 6 arithmetic)
