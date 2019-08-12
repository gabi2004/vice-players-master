; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\game\CObject.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

CONST	SEGMENT
_create_object DW 0107H
	DB	'ifffv', 00H
	ORG $+7
	ORG $+1
_destroy_object DW 0108H
	DB	'i', 00H
	ORG $+11
	ORG $+1
_set_target_state DW 035dH
	DB	'i', 00H
	ORG $+11
	ORG $+1
_get_object_state DW 0366H
	DB	'i', 00H
	ORG $+11
	ORG $+1
_set_object_rotation DW 0453H
	DB	'ifff', 00H
	ORG $+8
	ORG $+1
CONST	ENDS
PUBLIC	??0CObject@@QAE@HPAUVector3@@0@Z		; CObject::CObject
EXTRN	?SetEntity@CEntity@@QAEXPAU_ENTITY_TYPE@@@Z:PROC ; CEntity::SetEntity
EXTRN	?GetObjectFromIndex@CPools@@SGPAU_ENTITY_TYPE@@H@Z:PROC ; CPools::GetObjectFromIndex
EXTRN	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ:PROC	; ScriptCommand
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\vice-players-master\client\game\cobject.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ??0CObject@@QAE@HPAUVector3@@0@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_iModel$ = 8						; size = 4
_vecPos$ = 12						; size = 4
_vecRot$ = 16						; size = 4
??0CObject@@QAE@HPAUVector3@@0@Z PROC			; CObject::CObject, COMDAT
; _this$ = ecx

; 18   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 19   : 	// Reset the object index
; 20   : 	m_dwGTAId = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 21   : 
; 22   : 	// Create the object
; 23   : 	ScriptCommand(&create_object, iModel, vecPos->X, vecPos->Y, vecPos->Z, &m_dwGTAId);

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4
	push	eax
	mov	ecx, DWORD PTR _vecPos$[ebp]
	fld	DWORD PTR [ecx+8]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	edx, DWORD PTR _vecPos$[ebp]
	fld	DWORD PTR [edx+4]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	eax, DWORD PTR _vecPos$[ebp]
	fld	DWORD PTR [eax]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	ecx, DWORD PTR _iModel$[ebp]
	push	ecx
	push	OFFSET _create_object
	call	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ; ScriptCommand
	add	esp, 36					; 00000024H

; 24   : 	
; 25   : 	// Did the object creation succeed?
; 26   : 	if(m_dwGTAId)

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+4], 0
	je	SHORT $LN1@CObject

; 27   : 	{
; 28   : 		// Set the entity pointer
; 29   : 		SetEntity((ENTITY_TYPE *)CPools::GetObjectFromIndex(m_dwGTAId));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	?GetObjectFromIndex@CPools@@SGPAU_ENTITY_TYPE@@H@Z ; CPools::GetObjectFromIndex
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?SetEntity@CEntity@@QAEXPAU_ENTITY_TYPE@@@Z ; CEntity::SetEntity

; 30   : 
; 31   : 		// Set the object rotation
; 32   : 		ScriptCommand(&set_object_rotation, m_dwGTAId, vecRot->X, vecRot->Y, vecRot->Z);

	mov	eax, DWORD PTR _vecRot$[ebp]
	fld	DWORD PTR [eax+8]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	ecx, DWORD PTR _vecRot$[ebp]
	fld	DWORD PTR [ecx+4]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	edx, DWORD PTR _vecRot$[ebp]
	fld	DWORD PTR [edx]
	sub	esp, 8
	fstp	QWORD PTR [esp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	push	OFFSET _set_object_rotation
	call	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ; ScriptCommand
	add	esp, 32					; 00000020H
$LN1@CObject:

; 33   : 	}
; 34   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
??0CObject@@QAE@HPAUVector3@@0@Z ENDP			; CObject::CObject
_TEXT	ENDS
PUBLIC	??1CObject@@QAE@XZ				; CObject::~CObject
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??1CObject@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1CObject@@QAE@XZ PROC					; CObject::~CObject, COMDAT
; _this$ = ecx

; 37   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 38   : 	// Do we have a valid object index?
; 39   : 	if(m_dwGTAId != 0)

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+4], 0
	je	SHORT $LN2@CObject@2

; 40   : 	{
; 41   : 		// Destroy the object
; 42   : 		ScriptCommand(&destroy_object, m_dwGTAId);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	push	OFFSET _destroy_object
	call	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ; ScriptCommand
	add	esp, 8
$LN2@CObject@2:

; 43   : 	}
; 44   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CObject@@QAE@XZ ENDP					; CObject::~CObject
_TEXT	ENDS
PUBLIC	?SetObjectTargetable@CObject@@QAEXXZ		; CObject::SetObjectTargetable
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?SetObjectTargetable@CObject@@QAEXXZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
?SetObjectTargetable@CObject@@QAEXXZ PROC		; CObject::SetObjectTargetable, COMDAT
; _this$ = ecx

; 47   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 48   : 	ScriptCommand(&set_target_state, m_dwGTAId);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	push	OFFSET _set_target_state
	call	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ; ScriptCommand
	add	esp, 8

; 49   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
?SetObjectTargetable@CObject@@QAEXXZ ENDP		; CObject::SetObjectTargetable
_TEXT	ENDS
PUBLIC	?HasObjectBeenDamaged@CObject@@QAEHXZ		; CObject::HasObjectBeenDamaged
EXTRN	@_RTC_CheckStackVars@8:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?HasObjectBeenDamaged@CObject@@QAEHXZ
_TEXT	SEGMENT
_iDamage$ = -20						; size = 4
_this$ = -8						; size = 4
?HasObjectBeenDamaged@CObject@@QAEHXZ PROC		; CObject::HasObjectBeenDamaged, COMDAT
; _this$ = ecx

; 52   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 53   : 	int iDamage = 0;

	mov	DWORD PTR _iDamage$[ebp], 0

; 54   : 	ScriptCommand(&get_object_state, m_dwGTAId, &iDamage);

	lea	eax, DWORD PTR _iDamage$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	push	OFFSET _get_object_state
	call	?ScriptCommand@@YAHPBUSCRIPT_COMMAND@@ZZ ; ScriptCommand
	add	esp, 12					; 0000000cH

; 55   : 	return iDamage;

	mov	eax, DWORD PTR _iDamage$[ebp]

; 56   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@HasObjectB
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN5@HasObjectB:
	DD	1
	DD	$LN4@HasObjectB
$LN4@HasObjectB:
	DD	-20					; ffffffecH
	DD	4
	DD	$LN3@HasObjectB
$LN3@HasObjectB:
	DB	105					; 00000069H
	DB	68					; 00000044H
	DB	97					; 00000061H
	DB	109					; 0000006dH
	DB	97					; 00000061H
	DB	103					; 00000067H
	DB	101					; 00000065H
	DB	0
?HasObjectBeenDamaged@CObject@@QAEHXZ ENDP		; CObject::HasObjectBeenDamaged
_TEXT	ENDS
END