#ifndef MELEE_LB_FORWARD_H
#define MELEE_LB_FORWARD_H

#include <platform.h>

typedef struct AbsorbDesc AbsorbDesc;
typedef struct HitCapsule HitCapsule;
typedef struct HitResult HitResult;
typedef struct HitVictim HitVictim;
typedef struct HurtCapsule HurtCapsule;
typedef struct lb_UnkAnimStruct lb_UnkAnimStruct;
typedef struct ReflectDesc ReflectDesc;
typedef struct ShieldDesc ShieldDesc;
typedef struct lbRefract_CallbackData lbRefract_CallbackData;

typedef enum Tangibility {
    Vulnerable,
    Invincible,
    Intangible
} Tangibility;

typedef enum HitElement {
    HitElement_Normal,
    HitElement_Fire,
    HitElement_Electric,
    HitElement_Slash,
    HitElement_Coin,
    HitElement_Ice,

    /// Sleep for 103 frames
    HitElement_Nap,

    /// Sleep for 412 frames
    HitElement_Sleep,

    HitElement_Catch,
    HitElement_Ground,
    HitElement_Cape,
    HitElement_Inert,
    HitElement_Disable,
    HitElement_Dark,

    /// Screw Attack
    HitElement_Scball,

    HitElement_Lipstick,

    /// Formerly presumed empty, this hitbox element is used by
    ///  ReDead grab attacks
    HitElement_Leadead,
} HitElement;

typedef enum HitCapsuleState {
    HitCapsule_Disabled,
    HitCapsule_Enabled,
    HitCapsule_Unk2,
} HitCapsuleState;

typedef void (*RefractCallbackTypeA)(struct lbRefract_CallbackData*, s32, u32,
                                     s8, s8);
typedef void (*RefractCallbackTypeB)(struct lbRefract_CallbackData*, s32, u32,
                                     s8, s8, s8, s8);
typedef void (*RefractCallbackTypeC)(struct lbRefract_CallbackData*, s32, u32,
                                     s32*, s32*, s32*, s32*);

#endif
