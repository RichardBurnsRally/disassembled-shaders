Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 5 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\CarTextureNoDirt.nvp"
    def c0, 1, 0, 0, 1

#line 9
    tex t0
    mul_sat r0.xyz, v0, t0
  + mov r0.w, t0.w

#line 15
    add_sat r0.xyz, r0, v1
  + mov r1.w, c4.w
    lrp r0.xyz, r1.w, r0, c4

// approximately 4 instruction slots used (1 texture, 3 arithmetic)
