Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 6 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\ObjPosNormalTexture.nvp"
    def c0, 1, 0, 0, 1

#line 10
    tex t0
    mul_sat r0.xyz, v0, t0
  + mov r0.w, t0.w

#line 16
    add_sat r0.xyz, r0, v1

#line 20
    mov r1.w, c4.w
    lrp r0.xyz, r1.w, r0, c4

// approximately 5 instruction slots used (1 texture, 4 arithmetic)
