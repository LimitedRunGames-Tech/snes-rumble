;**********************************************************************
;*                                                                    *
;*                  P R O J E C T :   REALITY_ENGINE                  *
;*                                                                    *
;*                                    RUMBLE STRUCTURE DEFINITIONS    *
;*                                                                    *
;**********************************************************************


;
;	* * * * * * *       DEFINITIONS       * * * * * * *
;
MaxRumbles		equ	4			; Maximum Rumbles



;
;	* * * * * * *       RUMBLE EFFECTS COMMANDS       * * * * * * *
;
recShift		equ	6
recMask			equ	(3 << recShift)		; Command Bitmask
;
recAdd			equ	(0 << recShift)		; Add Effect
recAddLoop		equ	(1 << recShift)		; Add Effect Loop
recRemLoop		equ	(2 << recShift)		; Remove Effect Loop
;
reMask			equ	(1 << recShift)-1	; Effect# Bitmask



;
;	* * * * * * *       RUMBLE EFFECTS       * * * * * * *
;
re			var	1			; !!! MUST NOT BE 0 (USED FOR EMPTY EFFECT) !!!

	ifn	useRUMBLE_TEST
reMotorR1		equ	re			; Motor Right 1
re			var	re+1
reMotorL1		equ	re			; Motor Left 1
re			var	re+1
reMotorR8		equ	re			; Motor Right 8
re			var	re+1
reMotorL8		equ	re			; Motor Left 8
re			var	re+1
reMotorR15		equ	re			; Motor Right 15
re			var	re+1
reMotorL15		equ	re			; Motor Left 15
re			var	re+1
	endif

reButton1		equ	re			; Button Press 1
re			var	re+1
reButton2		equ	re			; Button Press 2
re			var	re+1

	ifn	useRUMBLE_DAMAGE
reDamagePlayer1		equ	re			; Damage Player 1
re			var	re+1
reDamagePlayer2		equ	re			; Damage Player 2
re			var	re+1
reDamagePlayer3		equ	re			; Damage Player 3
re			var	re+1
	endif

	ifn	useRUMBLE_WEAPONS
reFireFist		equ	re			; Fire Fist
re			var	re+1
reFirePistol		equ	re			; Fire Pistol
re			var	re+1
reFireShotGun		equ	re			; Fire ShotGun
re			var	re+1
reIdleChainSaw		equ	re			; Idle ChainSaw
re			var	re+1
reFireChainSaw		equ	re			; Fire ChainSaw
re			var	re+1
reFireChainGun		equ	re			; Fire ChainGun
re			var	re+1
reFireRocket		equ	re			; Fire Rocket
re			var	re+1
reFirePlasma		equ	re			; Fire Plasma
re			var	re+1
reFireBFG		equ	re			; Fire BFG
re			var	re+1
	endif
