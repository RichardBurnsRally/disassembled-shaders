Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 26 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\ObjPosNormalTexture.nvv"
    dcl_position v0
    dcl_normal v3
    dcl_texcoord v7
    dcl_color v8

#line 32
    m4x4 oPos, v0, c0

#line 45
    m3x3 r7.xyz, v3, c12
    dp3 r7.w, r7, r7
    rsq r7.w, r7.w
    mul r7, r7, r7.w

#line 50
    mov r9, c41
    dp3 r1, r7, r9
    max r1, r1, c64.w

#line 56
    add r1, r1, c93
    mul r1, r1, v8
    mul oD0.xyz, r1, c68

#line 62
    mov oD0.w, r1.w

#line 66
    mov oD1, c67

#line 69
    mov oT0.xy, v7.xyyy

// approximately 19 instruction slots used
