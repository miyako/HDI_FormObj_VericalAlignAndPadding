Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		InitInfo
		
		vtInputSample:=Localized string("HDI2_InputSample")
		vtPaddingTop:=0
		vtPaddingRight:=0
		vtPaddingBottom:=0
		vtPaddingLeft:=0
		vtHAlign:=2
		vtHAlignIsLeft:=True:C214
		vtHAlignIsCenter:=False:C215
		vtHAlignIsRight:=False:C215
		vtVAlign:=2
		vtVAlignIsTop:=True:C214
		vtVAlignIsMiddle:=False:C215
		vtVAlignIsBottom:=False:C215
		vtInputPaddingTop:=0
		vtInputPaddingRight:=0
		vtInputPaddingBottom:=0
		vtInputPaddingLeft:=0
		vtInputHAlign:=2
		vtInputHAlignIsLeft:=True:C214
		vtInputHAlignIsCenter:=False:C215
		vtInputHAlignIsRight:=False:C215
		vtInputVAlign:=2
		vtInputVAlignIsTop:=True:C214
		vtInputVAlignIsMiddle:=False:C215
		vtInputVAlignIsBottom:=False:C215
		
	: (Form event code:C388=On Close Box:K2:21)
		If (Is Windows:C1573 && Application info:C1599().SDIMode)
			INVOKE ACTION(ak return to design mode)
		Else 
			CANCEL:C270
		End if 
		
End case 
