Microsoft (R) Direct3D Shader Compiler 9.29.952.3111
Copyright (C) Microsoft Corporation 2002-2009. All rights reserved.

    vs_1_1

#line 13 "l:\Rally_7\SourceMaterial\CodeBase\Game\Pc\HedgeHog3D\VertexShaders\General\ObjPosNormalTextureShadow.nvv"
    dcl_position v0
    dcl_normal v3
    dcl_texcoord v7

#line 19
    add r0.xyz, -c83.xyzz, v0.xyzz
    dp3 r0.w, r0.xyzz, r0.xyzz
    rsq r0.w, r0.w
    mul r0.xyz, r0.xyzz, r0.w

#line 25
    dp3 r0.w, r0.xyzz, v3.xyzz

#line 29
    slt r0.w, r0.w, c82.y

#line 32
    mul r0.w, r0.w, c82.x
    mad r0.xyz, r0.xyzz, r0.w, v0.xyzz
    mov r0.w, v0.w

#line 37
    m4x4 oPos, r0, c0

// approximately 13 instruction slots used
