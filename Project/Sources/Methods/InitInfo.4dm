//%attributes = {"invisible":true}
var Infos : Collection
var objTabs : Object

Infos:=ds:C1482.INFO.all().orderBy("PageNumber").toCollection()

// tab titles follow the UI language; the stored TabTitle is the fallback
var $titles : Collection
$titles:=New collection

var $i : Integer
For ($i; 0; Infos.length-1)
	var $id : Text
	$id:="HDI2_Tab"+String(Infos[$i].PageNumber)
	var $title : Text
	$title:=Localized string($id)
	If ($title="")
		// the ID is not in the XLIFF files: Localized string returns ""
		$title:=Infos[$i].TabTitle
	End if 
	$titles.push($title)
End for 

objTabs:=New object:C1471("values"; $titles; "index"; 0)
