Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    ps_1_1

#line 8 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\PixelShaders\General\CarGlassInternal.nvp"
    def c0, 1, 0, 0, 1
    tex t0

#line 13
    mul r0.xyz, t0, v0
  + mov r0.w, t0.w

// approximately 2 instruction slots used (1 texture, 1 arithmetic)
