Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 29 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\Fog\CarPaint1.nvv"
    dcl_position v0
    dcl_normal v3
    dcl_texcoord v7
    dcl_texcoord1 v8

#line 40
    m4x4 oPos, v0, c0
    mov oT0, v7
    mov oT2, v7
    mov oT3, v7

#line 46
    dp4 r9.z, v0, c30

#line 55
    m4x4 r6, v0, c8

#line 58
    m3x3 r7.xyz, v3, c12
    dp3 r7.w, r7, r7
    rsq r7.w, r7.w
    mul r7, r7, r7.w

#line 62
    mov r9, -c41

#line 65
    add r10, c50, -r6
    dp3 r10.w, r10, r10
    rsq r10.w, r10.w
    mul r10, r10, r10.w

#line 69
    add r8, r9, r10
    dp3 r8.w, r8, r8
    rsq r8.w, r8.w
    mul r8, r8, r8.w
    dp3 r3, r7, r8
    dp3 r5, r7, r9
    dp3 r4, r7, r10

#line 82
    dp3 r1, r7, r9

#line 85
    max r1, r1, c80.w
    mul r1.xyz, r1, c80.y

#line 90
    mul r2, r7.y, c76.x
    add r2, r2, c76.x

#line 94
    mul r0, r2, c93
    mul r0.xyz, r0, c80.x

#line 101
    add r0.xyz, r0, r1
    mul r0.xyz, r0, c68
    mov oD0.xyz, r0

#line 106
    mov oD0.w, v8.x

#line 116
    rcp r0, r3.w
    mul r0, r0, r0

#line 120
    add r1.w, c76.y, -r0.x
    mul r1.w, r1.w, c77.x
    expp r1, r1.w
    mul r1.x, r1.z, r0.x
    mul r1.x, r1.x, r0.x

#line 127
    rcp r0, r3.w
    mul r0, r0, c78.x
    mul r1.x, r0.x, r1.x

#line 132
    mul r0.x, r3, r4
    mul r0.y, r3, r5
    dp3 r2, r8, r10
    rcp r2, r2.w
    mul r0.xy, r0.xyyy, r2.x
    min r0.x, r0.x, r0.y
    min r0.x, r0.x, c76.x
    add r0.x, r0.x, r0.x

#line 145
    add r8.xy, c91.w, -r4
    mov r8.w, c92.z
    lit r9, r8
    mad r9.z, r9.z, c91.y, c91.x

#line 152
    max r9.z, r9.z, c92.x
    min r9.w, r9.z, c92.y
    mul r2.w, r5, r4
    rcp r2, r2.w

#line 163
    mul r0.x, r0.x, r1.x
    mul r0.x, r0.x, r1.w
    mul r0.x, r0.x, c76.w
    mul r0.x, r0.x, r2.x
    mul r0.xyz, c90.xyzz, r0.x
    mul r0, r0, c79.x
    add oD1.xyz, r0, c67

#line 182
    mul oD1.w, r9.w, c79.y

#line 189
    dp3 r0, r10, r7
    add r0, r0, r0
    mul r7, r7, r0
    add r0, r10, -r7
    mul oT1, r0, c80.z

// approximately 80 instruction slots used
