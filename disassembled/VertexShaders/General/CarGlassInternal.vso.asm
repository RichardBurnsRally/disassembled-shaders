Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 21 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\General\CarGlassInternal.nvv"
    dcl_position v0
    dcl_normal v3
    dcl_texcoord v7

#line 30
    m4x4 oPos, v0, c0
    mov oT0, v7

#line 39
    m3x3 r7.xyz, v3, c12
    dp3 r7.w, r7, r7
    rsq r7.w, r7.w
    mul r7, r7, r7.w

#line 43
    mov r9, -c41

#line 51
    dp3 r1, r7, r9

#line 54
    max r1, r1, c80.w
    mul r1.xyz, r1, c80.y
    mov r0, c93
    mul r0.xyz, r0, c80.x
    add r0.xyz, r0, r1
    mov oD0, r0

// approximately 19 instruction slots used
