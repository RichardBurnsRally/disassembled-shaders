Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 24 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\CarColor.nvv"
    dcl_position v0
    dcl_normal v3
    dcl_texcoord v7

#line 29
    m4x4 oPos, v0, c0

#line 32
    m3x3 r7.xyz, v3, c12
    dp3 r7.w, r7, r7
    rsq r7.w, r7.w
    mul r7, r7, r7.w
    mov r9, -c41

#line 38
    dp3 r1, r7, r9

#line 41
    max r1, r1, c80.w
    mul r1.xyz, r1, c80.y
    mov r0, c93
    mul r0.xyz, r0, c80.x
    add r0.xyz, r0, r1
    mul r0.xyz, r0, c68
    mov oD0, r0
    mov oD1, c67

#line 54
    mov oT0.xy, v7.xyyy
    mov oT1.xy, v7.xyyy

// approximately 22 instruction slots used
