; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.30729.01 

	TITLE	d:\vice-players-master\Client\CTimerPool.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??0CTimerPool@@QAE@XZ				; CTimerPool::CTimerPool
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File d:\vice-players-master\client\ctimerpool.cpp
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT ??0CTimerPool@@QAE@XZ
_TEXT	SEGMENT
_i$209250 = -20						; size = 4
_this$ = -8						; size = 4
??0CTimerPool@@QAE@XZ PROC				; CTimerPool::CTimerPool, COMDAT
; _this$ = ecx

; 19   : {

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

; 20   : 	for(int i = 0; i < MAX_TIMERS; i++)

	mov	DWORD PTR _i$209250[ebp], 0
	jmp	SHORT $LN3@CTimerPool
$LN2@CTimerPool:
	mov	eax, DWORD PTR _i$209250[ebp]
	add	eax, 1
	mov	DWORD PTR _i$209250[ebp], eax
$LN3@CTimerPool:
	cmp	DWORD PTR _i$209250[ebp], 100		; 00000064H
	jge	SHORT $LN4@CTimerPool

; 21   : 		m_Timers[i] = NULL;

	mov	eax, DWORD PTR _i$209250[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0
	jmp	SHORT $LN2@CTimerPool
$LN4@CTimerPool:

; 22   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0CTimerPool@@QAE@XZ ENDP				; CTimerPool::CTimerPool
_TEXT	ENDS
PUBLIC	?Kill@CTimerPool@@QAE_NH@Z			; CTimerPool::Kill
PUBLIC	??1CTimerPool@@QAE@XZ				; CTimerPool::~CTimerPool
EXTRN	__RTC_CheckEsp:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??1CTimerPool@@QAE@XZ
_TEXT	SEGMENT
_i$209257 = -20						; size = 4
_this$ = -8						; size = 4
??1CTimerPool@@QAE@XZ PROC				; CTimerPool::~CTimerPool, COMDAT
; _this$ = ecx

; 25   : {

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

; 26   : 	for(int i = 0; i < MAX_TIMERS; i++)

	mov	DWORD PTR _i$209257[ebp], 0
	jmp	SHORT $LN3@CTimerPool@2
$LN2@CTimerPool@2:
	mov	eax, DWORD PTR _i$209257[ebp]
	add	eax, 1
	mov	DWORD PTR _i$209257[ebp], eax
$LN3@CTimerPool@2:
	cmp	DWORD PTR _i$209257[ebp], 100		; 00000064H
	jge	SHORT $LN4@CTimerPool@2

; 27   : 		Kill(i);

	mov	eax, DWORD PTR _i$209257[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Kill@CTimerPool@@QAE_NH@Z		; CTimerPool::Kill
	jmp	SHORT $LN2@CTimerPool@2
$LN4@CTimerPool@2:

; 28   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1CTimerPool@@QAE@XZ ENDP				; CTimerPool::~CTimerPool
_TEXT	ENDS
PUBLIC	??1SQObjectPtr@@QAE@XZ				; SQObjectPtr::~SQObjectPtr
PUBLIC	??4SQObjectPtr@@QAEAAU0@ABU0@@Z			; SQObjectPtr::operator=
PUBLIC	??0ScriptTimer@@QAE@XZ				; ScriptTimer::ScriptTimer
PUBLIC	?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z ; CTimerPool::Set
EXTRN	??3@YAXPAX@Z:PROC				; operator delete
EXTRN	?onTimerCreate@CScripts@@QAEXH@Z:PROC		; CScripts::onTimerCreate
EXTRN	?pScripts@@3PAVCScripts@@A:DWORD		; pScripts
EXTRN	__imp__GetTickCount@0:PROC
EXTRN	??2@YAPAXI@Z:PROC				; operator new
EXTRN	___security_cookie:DWORD
EXTRN	___CxxFrameHandler3:PROC
EXTRN	@__security_check_cookie@4:PROC
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z$0
	DD	00H
	DD	FLAT:__unwindfunclet$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z$1
__ehfuncinfo$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z
_TEXT	SEGMENT
tv79 = -280						; size = 4
$T209378 = -272						; size = 4
$T209379 = -260						; size = 4
$T209382 = -248						; size = 4
$T209383 = -236						; size = 4
_i$209270 = -32						; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
_pScriptVM$ = 8						; size = 4
_pFunction$ = 12					; size = 8
_iInterval$ = 20					; size = 4
_iRepeations$ = 24					; size = 4
_iArgCount$ = 28					; size = 4
_pArguments$ = 32					; size = 4
?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z PROC ; CTimerPool::Set, COMDAT
; _this$ = ecx

; 31   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 268				; 0000010cH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-280]
	mov	ecx, 67					; 00000043H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 32   : 	for(int i = 0; i < MAX_TIMERS; i++)

	mov	DWORD PTR _i$209270[ebp], 0
	jmp	SHORT $LN4@Set
$LN3@Set:
	mov	eax, DWORD PTR _i$209270[ebp]
	add	eax, 1
	mov	DWORD PTR _i$209270[ebp], eax
$LN4@Set:
	cmp	DWORD PTR _i$209270[ebp], 100		; 00000064H
	jge	$LN2@Set

; 33   : 	{
; 34   : 		if(m_Timers[i] == NULL)

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	jne	$LN1@Set

; 35   : 		{
; 36   : 			m_Timers[i] = new ScriptTimer;

	push	32					; 00000020H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T209379[ebp], eax
	mov	BYTE PTR __$EHRec$[ebp+8], 1
	cmp	DWORD PTR $T209379[ebp], 0
	je	SHORT $LN7@Set
	mov	ecx, DWORD PTR $T209379[ebp]
	call	??0ScriptTimer@@QAE@XZ
	mov	DWORD PTR tv79[ebp], eax
	jmp	SHORT $LN8@Set
$LN7@Set:
	mov	DWORD PTR tv79[ebp], 0
$LN8@Set:
	mov	eax, DWORD PTR tv79[ebp]
	mov	DWORD PTR $T209378[ebp], eax
	mov	BYTE PTR __$EHRec$[ebp+8], 0
	mov	ecx, DWORD PTR _i$209270[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR $T209378[ebp]
	mov	DWORD PTR [edx+ecx*4], eax

; 37   : 			m_Timers[i]->pFunction = pFunction;

	lea	eax, DWORD PTR _pFunction$[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$209270[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	call	??4SQObjectPtr@@QAEAAU0@ABU0@@Z		; SQObjectPtr::operator=

; 38   : 			m_Timers[i]->uInterval = iInterval;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _iInterval$[ebp]
	mov	DWORD PTR [edx+8], eax

; 39   : 			m_Timers[i]->iRemainingRepeations = iRepeations;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _iRepeations$[ebp]
	mov	DWORD PTR [edx+12], eax

; 40   : 			m_Timers[i]->pScriptVM = pScriptVM;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _pScriptVM$[ebp]
	mov	DWORD PTR [edx+16], eax

; 41   : 			m_Timers[i]->uTick = GetTickCount();

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _i$209270[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR [ecx+20], eax

; 42   : 			m_Timers[i]->iArgCount = iArgCount;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _iArgCount$[ebp]
	mov	DWORD PTR [edx+24], eax

; 43   : 			m_Timers[i]->pArguments = pArguments;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _pArguments$[ebp]
	mov	DWORD PTR [edx+28], eax

; 44   : 			pScripts->onTimerCreate(i);

	mov	eax, DWORD PTR _i$209270[ebp]
	push	eax
	mov	ecx, DWORD PTR ?pScripts@@3PAVCScripts@@A ; pScripts
	call	?onTimerCreate@CScripts@@QAEXH@Z	; CScripts::onTimerCreate

; 45   : 			return i;

	mov	eax, DWORD PTR _i$209270[ebp]
	mov	DWORD PTR $T209382[ebp], eax
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _pFunction$[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
	mov	eax, DWORD PTR $T209382[ebp]
	jmp	SHORT $LN5@Set
$LN1@Set:

; 46   : 		}
; 47   : 	}

	jmp	$LN3@Set
$LN2@Set:

; 48   : 
; 49   : 	return -1;

	mov	DWORD PTR $T209383[ebp], -1
	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _pFunction$[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
	mov	eax, DWORD PTR $T209383[ebp]
$LN5@Set:

; 50   : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 280				; 00000118H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	28					; 0000001cH
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z$0:
	lea	ecx, DWORD PTR _pFunction$[ebp]
	jmp	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
__unwindfunclet$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z$1:
	mov	eax, DWORD PTR $T209379[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	pop	ecx
	ret	0
__ehhandler$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-284]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?Set@CTimerPool@@QAEHPAUSQVM@@USQObjectPtr@@HHHPAU3@@Z ENDP ; CTimerPool::Set
PUBLIC	??0SQObjectPtr@@QAE@XZ				; SQObjectPtr::SQObjectPtr
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??0ScriptTimer@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??0ScriptTimer@@QAE@XZ PROC				; ScriptTimer::ScriptTimer, COMDAT
; _this$ = ecx
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
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0SQObjectPtr@@QAE@XZ			; SQObjectPtr::SQObjectPtr
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??0ScriptTimer@@QAE@XZ ENDP				; ScriptTimer::ScriptTimer
_TEXT	ENDS
PUBLIC	??_GScriptTimer@@QAEPAXI@Z			; ScriptTimer::`scalar deleting destructor'
PUBLIC	??_ESQObjectPtr@@QAEPAXI@Z			; SQObjectPtr::`vector deleting destructor'
EXTRN	?onTimerDestroy@CScripts@@QAEXH@Z:PROC		; CScripts::onTimerDestroy
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?Kill@CTimerPool@@QAE_NH@Z
_TEXT	SEGMENT
tv90 = -256						; size = 4
tv80 = -256						; size = 4
$T209402 = -248						; size = 4
$T209403 = -236						; size = 4
$T209406 = -224						; size = 4
$T209407 = -212						; size = 4
_this$ = -8						; size = 4
_iTimerId$ = 8						; size = 4
?Kill@CTimerPool@@QAE_NH@Z PROC				; CTimerPool::Kill, COMDAT
; _this$ = ecx

; 53   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 256				; 00000100H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-256]
	mov	ecx, 64					; 00000040H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 54   : 	if(iTimerId >= 0 && iTimerId < MAX_TIMERS)

	cmp	DWORD PTR _iTimerId$[ebp], 0
	jl	$LN3@Kill
	cmp	DWORD PTR _iTimerId$[ebp], 100		; 00000064H
	jge	$LN3@Kill

; 55   : 	{
; 56   : 		if(m_Timers[iTimerId] != NULL)

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	$LN3@Kill

; 57   : 		{
; 58   : 			if(m_Timers[iTimerId]->pArguments != NULL)

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	cmp	DWORD PTR [edx+28], 0
	je	SHORT $LN1@Kill

; 59   : 			{
; 60   : 				delete[] m_Timers[iTimerId]->pArguments;

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+28]
	mov	DWORD PTR $T209403[ebp], eax
	mov	ecx, DWORD PTR $T209403[ebp]
	mov	DWORD PTR $T209402[ebp], ecx
	cmp	DWORD PTR $T209402[ebp], 0
	je	SHORT $LN6@Kill
	push	3
	mov	ecx, DWORD PTR $T209402[ebp]
	call	??_ESQObjectPtr@@QAEPAXI@Z
	mov	DWORD PTR tv80[ebp], eax
	jmp	SHORT $LN7@Kill
$LN6@Kill:
	mov	DWORD PTR tv80[ebp], 0
$LN7@Kill:

; 61   : 				m_Timers[iTimerId]->pArguments = NULL;

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR [edx+28], 0
$LN1@Kill:

; 62   : 			}
; 63   : 			delete m_Timers[iTimerId];

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR $T209407[ebp], edx
	mov	eax, DWORD PTR $T209407[ebp]
	mov	DWORD PTR $T209406[ebp], eax
	cmp	DWORD PTR $T209406[ebp], 0
	je	SHORT $LN8@Kill
	push	1
	mov	ecx, DWORD PTR $T209406[ebp]
	call	??_GScriptTimer@@QAEPAXI@Z
	mov	DWORD PTR tv90[ebp], eax
	jmp	SHORT $LN9@Kill
$LN8@Kill:
	mov	DWORD PTR tv90[ebp], 0
$LN9@Kill:

; 64   : 			m_Timers[iTimerId] = NULL;

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+eax*4], 0

; 65   : 			pScripts->onTimerDestroy(iTimerId);

	mov	eax, DWORD PTR _iTimerId$[ebp]
	push	eax
	mov	ecx, DWORD PTR ?pScripts@@3PAVCScripts@@A ; pScripts
	call	?onTimerDestroy@CScripts@@QAEXH@Z	; CScripts::onTimerDestroy

; 66   : 			return true;

	mov	al, 1
	jmp	SHORT $LN4@Kill
$LN3@Kill:

; 67   : 		}
; 68   : 	}
; 69   : 
; 70   : 	return false;

	xor	al, al
$LN4@Kill:

; 71   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 256				; 00000100H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?Kill@CTimerPool@@QAE_NH@Z ENDP				; CTimerPool::Kill
_TEXT	ENDS
EXTRN	??_V@YAXPAX@Z:PROC				; operator delete[]
EXTRN	??_M@YGXPAXIHP6EX0@Z@Z:PROC			; `eh vector destructor iterator'
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_ESQObjectPtr@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_ESQObjectPtr@@QAEPAXI@Z PROC				; SQObjectPtr::`vector deleting destructor', COMDAT
; _this$ = ecx
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
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 2
	je	SHORT $LN3@vector
	push	OFFSET ??1SQObjectPtr@@QAE@XZ		; SQObjectPtr::~SQObjectPtr
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax-4]
	push	ecx
	push	8
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??_M@YGXPAXIHP6EX0@Z@Z
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN2@vector
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	push	eax
	call	??_V@YAXPAX@Z				; operator delete[]
	add	esp, 4
$LN2@vector:
	mov	eax, DWORD PTR _this$[ebp]
	sub	eax, 4
	jmp	SHORT $LN4@vector
$LN3@vector:
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@vector
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@vector:
	mov	eax, DWORD PTR _this$[ebp]
$LN4@vector:
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_ESQObjectPtr@@QAEPAXI@Z ENDP				; SQObjectPtr::`vector deleting destructor'
_TEXT	ENDS
PUBLIC	??1ScriptTimer@@QAE@XZ				; ScriptTimer::~ScriptTimer
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ??_GScriptTimer@@QAEPAXI@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
___flags$ = 8						; size = 4
??_GScriptTimer@@QAEPAXI@Z PROC				; ScriptTimer::`scalar deleting destructor', COMDAT
; _this$ = ecx
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
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1ScriptTimer@@QAE@XZ
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	je	SHORT $LN1@scalar
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$LN1@scalar:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
??_GScriptTimer@@QAEPAXI@Z ENDP				; ScriptTimer::`scalar deleting destructor'
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??1ScriptTimer@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1ScriptTimer@@QAE@XZ PROC				; ScriptTimer::~ScriptTimer, COMDAT
; _this$ = ecx
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
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1ScriptTimer@@QAE@XZ ENDP				; ScriptTimer::~ScriptTimer
_TEXT	ENDS
PUBLIC	?Process@CTimerPool@@QAEXXZ			; CTimerPool::Process
EXTRN	_sq_settop:PROC
EXTRN	?Call@SQVM@@QAE_NAAUSQObjectPtr@@HH0I@Z:PROC	; SQVM::Call
EXTRN	?Push@SQVM@@QAEXABUSQObjectPtr@@@Z:PROC		; SQVM::Push
EXTRN	_sq_pushroottable:PROC
EXTRN	_sq_gettop:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?Process@CTimerPool@@QAEXXZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?Process@CTimerPool@@QAEXXZ$0
__ehfuncinfo$?Process@CTimerPool@@QAEXXZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?Process@CTimerPool@@QAEXXZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Odtp /RTCsu /ZI
xdata$x	ENDS
;	COMDAT ?Process@CTimerPool@@QAEXXZ
_TEXT	SEGMENT
_retval$209323 = -84					; size = 8
_j$209319 = -68						; size = 4
_iTopStart$209317 = -56					; size = 4
_vm$209316 = -44					; size = 4
_i$209310 = -32						; size = 4
_this$ = -20						; size = 4
__$EHRec$ = -12						; size = 12
?Process@CTimerPool@@QAEXXZ PROC			; CTimerPool::Process, COMDAT
; _this$ = ecx

; 74   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?Process@CTimerPool@@QAEXXZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 268				; 0000010cH
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-280]
	mov	ecx, 67					; 00000043H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	DWORD PTR _this$[ebp], ecx

; 75   : 	for(int i = 0; i < MAX_TIMERS; i++)

	mov	DWORD PTR _i$209310[ebp], 0
	jmp	SHORT $LN13@Process
$LN12@Process:
	mov	eax, DWORD PTR _i$209310[ebp]
	add	eax, 1
	mov	DWORD PTR _i$209310[ebp], eax
$LN13@Process:
	cmp	DWORD PTR _i$209310[ebp], 100		; 00000064H
	jge	$LN14@Process

; 76   : 	{
; 77   : 		if(m_Timers[i] != NULL)

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	$LN10@Process

; 78   : 		{
; 79   : 			if((GetTickCount() - m_Timers[i]->uTick) > m_Timers[i]->uInterval)

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _i$209310[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	sub	eax, DWORD PTR [ecx+20]
	mov	edx, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+edx*4]
	cmp	eax, DWORD PTR [edx+8]
	jbe	$LN10@Process

; 80   : 			{
; 81   : 				// TODO: This should just use CSquirrel::Call
; 82   : 				HSQUIRRELVM vm = m_Timers[i]->pScriptVM;

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+16]
	mov	DWORD PTR _vm$209316[ebp], eax

; 83   : 
; 84   : 				int iTopStart = sq_gettop(vm);

	mov	eax, DWORD PTR _vm$209316[ebp]
	push	eax
	call	_sq_gettop
	add	esp, 4
	mov	DWORD PTR _iTopStart$209317[ebp], eax

; 85   : 				sq_pushroottable(vm);

	mov	eax, DWORD PTR _vm$209316[ebp]
	push	eax
	call	_sq_pushroottable
	add	esp, 4

; 86   : 
; 87   : 				if(m_Timers[i]->pArguments != NULL)

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	cmp	DWORD PTR [edx+28], 0
	je	SHORT $LN8@Process

; 88   : 				{
; 89   : 					for(int j = 0; j < m_Timers[i]->iArgCount; ++j)

	mov	DWORD PTR _j$209319[ebp], 0
	jmp	SHORT $LN7@Process
$LN6@Process:
	mov	eax, DWORD PTR _j$209319[ebp]
	add	eax, 1
	mov	DWORD PTR _j$209319[ebp], eax
$LN7@Process:
	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR _j$209319[ebp]
	cmp	eax, DWORD PTR [edx+24]
	jge	SHORT $LN8@Process

; 90   : 						vm->Push(m_Timers[i]->pArguments[j]);

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+28]
	mov	ecx, DWORD PTR _j$209319[ebp]
	lea	edx, DWORD PTR [eax+ecx*8]
	push	edx
	mov	ecx, DWORD PTR _vm$209316[ebp]
	call	?Push@SQVM@@QAEXABUSQObjectPtr@@@Z	; SQVM::Push
	jmp	SHORT $LN6@Process
$LN8@Process:

; 91   : 				}
; 92   : 
; 93   : 				SQObjectPtr retval;

	lea	ecx, DWORD PTR _retval$209323[ebp]
	call	??0SQObjectPtr@@QAE@XZ			; SQObjectPtr::SQObjectPtr
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 94   : 				vm->Call(m_Timers[i]->pFunction, m_Timers[i]->iArgCount + 1, vm->_top - m_Timers[i]->iArgCount - 1, retval, true);

	push	1
	lea	eax, DWORD PTR _retval$209323[ebp]
	push	eax
	mov	ecx, DWORD PTR _i$209310[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	mov	ecx, DWORD PTR _vm$209316[ebp]
	mov	edx, DWORD PTR [ecx+36]
	sub	edx, DWORD PTR [eax+24]
	sub	edx, 1
	push	edx
	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+24]
	add	eax, 1
	push	eax
	mov	ecx, DWORD PTR _i$209310[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	mov	ecx, DWORD PTR _vm$209316[ebp]
	call	?Call@SQVM@@QAE_NAAUSQObjectPtr@@HH0I@Z	; SQVM::Call

; 95   : 				sq_settop(vm, iTopStart);

	mov	eax, DWORD PTR _iTopStart$209317[ebp]
	push	eax
	mov	ecx, DWORD PTR _vm$209316[ebp]
	push	ecx
	call	_sq_settop
	add	esp, 8

; 96   : 
; 97   : 				// Make sure the timer didn't kill itself
; 98   : 				if(m_Timers[i] != NULL)

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN4@Process

; 99   : 				{
; 100  : 					// If this was the last repetition
; 101  : 					if(m_Timers[i]->iRemainingRepeations == 1)

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	cmp	DWORD PTR [edx+12], 1
	jne	SHORT $LN3@Process

; 102  : 					{
; 103  : 						Kill(i);

	mov	eax, DWORD PTR _i$209310[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Kill@CTimerPool@@QAE_NH@Z		; CTimerPool::Kill

; 104  : 						continue;

	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _retval$209323[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
	jmp	$LN12@Process
	jmp	SHORT $LN2@Process
$LN3@Process:

; 105  : 					}
; 106  : 					else if(m_Timers[i]->iRemainingRepeations != -1) // If it is not infinite

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	cmp	DWORD PTR [edx+12], -1
	je	SHORT $LN2@Process

; 107  : 					{
; 108  : 						--m_Timers[i]->iRemainingRepeations;

	mov	eax, DWORD PTR _i$209310[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+12]
	sub	eax, 1
	mov	ecx, DWORD PTR _i$209310[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR [ecx+12], eax
$LN2@Process:

; 109  : 					}
; 110  : 
; 111  : 					m_Timers[i]->uTick = GetTickCount();

	mov	esi, esp
	call	DWORD PTR __imp__GetTickCount@0
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	ecx, DWORD PTR _i$209310[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR [ecx+20], eax
$LN4@Process:

; 112  : 				}
; 113  : 			}

	mov	DWORD PTR __$EHRec$[ebp+8], -1
	lea	ecx, DWORD PTR _retval$209323[ebp]
	call	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
$LN10@Process:

; 114  : 		}

	jmp	$LN12@Process
$LN14@Process:

; 115  : 	}
; 116  : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN20@Process
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 280				; 00000118H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	1
$LN20@Process:
	DD	1
	DD	$LN19@Process
$LN19@Process:
	DD	-84					; ffffffacH
	DD	8
	DD	$LN17@Process
$LN17@Process:
	DB	114					; 00000072H
	DB	101					; 00000065H
	DB	116					; 00000074H
	DB	118					; 00000076H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?Process@CTimerPool@@QAEXXZ$0:
	lea	ecx, DWORD PTR _retval$209323[ebp]
	jmp	??1SQObjectPtr@@QAE@XZ			; SQObjectPtr::~SQObjectPtr
__ehhandler$?Process@CTimerPool@@QAEXXZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-284]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?Process@CTimerPool@@QAEXXZ
	jmp	___CxxFrameHandler3
text$x	ENDS
?Process@CTimerPool@@QAEXXZ ENDP			; CTimerPool::Process
PUBLIC	?HandleScriptUnload@CTimerPool@@QAEXPAUSQVM@@@Z	; CTimerPool::HandleScriptUnload
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?HandleScriptUnload@CTimerPool@@QAEXPAUSQVM@@@Z
_TEXT	SEGMENT
_i$209332 = -20						; size = 4
_this$ = -8						; size = 4
_pScriptVM$ = 8						; size = 4
?HandleScriptUnload@CTimerPool@@QAEXPAUSQVM@@@Z PROC	; CTimerPool::HandleScriptUnload, COMDAT
; _this$ = ecx

; 120  : {

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

; 121  : 	for(int i = 0; i < MAX_TIMERS; i++)

	mov	DWORD PTR _i$209332[ebp], 0
	jmp	SHORT $LN5@HandleScri
$LN4@HandleScri:
	mov	eax, DWORD PTR _i$209332[ebp]
	add	eax, 1
	mov	DWORD PTR _i$209332[ebp], eax
$LN5@HandleScri:
	cmp	DWORD PTR _i$209332[ebp], 100		; 00000064H
	jge	SHORT $LN6@HandleScri

; 122  : 	{
; 123  : 		if(m_Timers[i] != NULL)

	mov	eax, DWORD PTR _i$209332[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+eax*4], 0
	je	SHORT $LN2@HandleScri

; 124  : 		{
; 125  : 			if(m_Timers[i]->pScriptVM == pScriptVM)

	mov	eax, DWORD PTR _i$209332[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	eax, DWORD PTR [edx+16]
	cmp	eax, DWORD PTR _pScriptVM$[ebp]
	jne	SHORT $LN2@HandleScri

; 126  : 			{
; 127  : 				Kill(i);

	mov	eax, DWORD PTR _i$209332[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?Kill@CTimerPool@@QAE_NH@Z		; CTimerPool::Kill
$LN2@HandleScri:

; 128  : 			}
; 129  : 		}

	jmp	SHORT $LN4@HandleScri
$LN6@HandleScri:

; 130  : 	}
; 131  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
?HandleScriptUnload@CTimerPool@@QAEXPAUSQVM@@@Z ENDP	; CTimerPool::HandleScriptUnload
_TEXT	ENDS
PUBLIC	?IsActive@CTimerPool@@QAE_NH@Z			; CTimerPool::IsActive
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT ?IsActive@CTimerPool@@QAE_NH@Z
_TEXT	SEGMENT
_this$ = -8						; size = 4
_iTimerId$ = 8						; size = 4
?IsActive@CTimerPool@@QAE_NH@Z PROC			; CTimerPool::IsActive, COMDAT
; _this$ = ecx

; 134  : {

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

; 135  : 	if(iTimerId < 0 || iTimerId > MAX_TIMERS)

	cmp	DWORD PTR _iTimerId$[ebp], 0
	jl	SHORT $LN1@IsActive
	cmp	DWORD PTR _iTimerId$[ebp], 100		; 00000064H
	jle	SHORT $LN2@IsActive
$LN1@IsActive:

; 136  : 	{
; 137  : 		return false;

	xor	al, al
	jmp	SHORT $LN3@IsActive
$LN2@IsActive:

; 138  : 	}
; 139  : 
; 140  : 	return m_Timers[iTimerId] != NULL;

	mov	eax, DWORD PTR _iTimerId$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	cmp	DWORD PTR [ecx+eax*4], 0
	setne	dl
	mov	al, dl
$LN3@IsActive:

; 141  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?IsActive@CTimerPool@@QAE_NH@Z ENDP			; CTimerPool::IsActive
; Function compile flags: /Odtp /RTCsu /ZI
; File d:\vice-players-master\vendor\squirrel\sqobject.h
_TEXT	ENDS
;	COMDAT ??0SQObjectPtr@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??0SQObjectPtr@@QAE@XZ PROC				; SQObjectPtr::SQObjectPtr, COMDAT
; _this$ = ecx

; 174  : 	SQObjectPtr()

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

; 175  : 	{
; 176  : 		SQ_OBJECT_RAWINIT()
; 177  : 		_type=OT_NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 16777217		; 01000001H

; 178  : 		_unVal.pUserPointer=NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 179  : 	}

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0SQObjectPtr@@QAE@XZ ENDP				; SQObjectPtr::SQObjectPtr
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??1SQObjectPtr@@QAE@XZ
_TEXT	SEGMENT
_this$ = -8						; size = 4
??1SQObjectPtr@@QAE@XZ PROC				; SQObjectPtr::~SQObjectPtr, COMDAT
; _this$ = ecx

; 227  : 	{

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

; 228  : 		__Release(_type,_unVal);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, 134217728				; 08000000H
	je	SHORT $LN2@SQObjectPt
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	cmp	DWORD PTR [eax+4], 0
	jne	SHORT $LN2@SQObjectPt
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	edx, DWORD PTR [ecx]
	mov	esi, esp
	mov	ecx, eax
	mov	eax, DWORD PTR [edx+4]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@SQObjectPt:

; 229  : 	}

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
??1SQObjectPtr@@QAE@XZ ENDP				; SQObjectPtr::~SQObjectPtr
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT ??4SQObjectPtr@@QAEAAU0@ABU0@@Z
_TEXT	SEGMENT
_unOldVal$ = -32					; size = 4
_tOldType$ = -20					; size = 4
_this$ = -8						; size = 4
_obj$ = 8						; size = 4
??4SQObjectPtr@@QAEAAU0@ABU0@@Z PROC			; SQObjectPtr::operator=, COMDAT
; _this$ = ecx

; 232  : 	{ 

	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	push	ecx
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	pop	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 233  : 		SQObjectType tOldType;
; 234  : 		SQObjectValue unOldVal;
; 235  : 		tOldType=_type;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _tOldType$[ebp], ecx

; 236  : 		unOldVal=_unVal;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _unOldVal$[ebp], ecx

; 237  : 		_unVal = obj._unVal;

	mov	eax, DWORD PTR _obj$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], ecx

; 238  : 		_type = obj._type;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _obj$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax], edx

; 239  : 		__AddRef(_type,_unVal);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, 134217728				; 08000000H
	je	SHORT $LN2@operator
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR [ecx+4], edx
$LN2@operator:

; 240  : 		__Release(tOldType,unOldVal);

	mov	eax, DWORD PTR _tOldType$[ebp]
	and	eax, 134217728				; 08000000H
	je	SHORT $LN1@operator
	mov	eax, DWORD PTR _unOldVal$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	sub	ecx, 1
	mov	edx, DWORD PTR _unOldVal$[ebp]
	mov	DWORD PTR [edx+4], ecx
	mov	eax, DWORD PTR _unOldVal$[ebp]
	cmp	DWORD PTR [eax+4], 0
	jne	SHORT $LN1@operator
	mov	eax, DWORD PTR _unOldVal$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	esi, esp
	mov	ecx, DWORD PTR _unOldVal$[ebp]
	mov	eax, DWORD PTR [edx+4]
	call	eax
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN1@operator:

; 241  : 		return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 242  : 	}

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@operator
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	4
	npad	2
$LN7@operator:
	DD	1
	DD	$LN6@operator
$LN6@operator:
	DD	-32					; ffffffe0H
	DD	4
	DD	$LN5@operator
$LN5@operator:
	DB	117					; 00000075H
	DB	110					; 0000006eH
	DB	79					; 0000004fH
	DB	108					; 0000006cH
	DB	100					; 00000064H
	DB	86					; 00000056H
	DB	97					; 00000061H
	DB	108					; 0000006cH
	DB	0
??4SQObjectPtr@@QAEAAU0@ABU0@@Z ENDP			; SQObjectPtr::operator=
_TEXT	ENDS
END