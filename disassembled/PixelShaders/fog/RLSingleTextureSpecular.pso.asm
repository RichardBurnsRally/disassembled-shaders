Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 11 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLSingleTextureSpecular.nvp"
    def c0, 1, 0, 0, 1

#line 18
    tex t0
    tex t1

#line 22
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w

#line 31
    add_sat r0.xyz, r0, v1

#line 37
    mov r0, c0

// approximately 5 instruction slots used (2 texture, 3 arithmetic)
