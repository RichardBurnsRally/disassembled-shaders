Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 7 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\Fog\RLSingleTexture.nvp"
    def c0, 1, 0, 0, 1

#line 13
    tex t0

#line 16
    mul_sat r0.xyz, v0, t0
  + mul_sat r0.w, v0.w, t0.w
    add_sat r0.xyz, r0, v1

// approximately 3 instruction slots used (1 texture, 2 arithmetic)
