//%attributes = {}
#DECLARE($params : Object)

var $title : Text
var $window : Integer

$title:="Adjust Vertical Alignment and Padding"+Char(Carriage return)+"in My Text Area and Input Objects"

If (Count parameters=0)
	
	// already open? bring the demo window to the front instead of opening a duplicate
	ARRAY LONGINT($windows; 0)
	WINDOW LIST($windows)
	var $i : Integer
	For ($i; 1; Size of array($windows))
		$window:=$windows{$i}
		If (Window process($window)=1) && (Get window title($window)=$title)
			var $left; $top; $right; $bottom : Integer
			GET WINDOW RECT($left; $top; $right; $bottom; $window)
			CALL FORM($window; Formula(SET WINDOW RECT($left; $top; $right; $bottom; $window)))
			return 
		End if 
	End for 
	
	CALL WORKER(1; Current method name; {})
	
Else 
	
	SET MENU BAR(1)
	$window:=Open form window("HDI"; Plain form window; Horizontally centered; Vertically centered)
	SET WINDOW TITLE($title; $window)
	
	var $options : Object
	$options:=New object
	
	$options.title:=$title
	$options.blog:="blog.4d.com"
	$options.info:="Form Objects Feature"
	$options.minimumVersion:="2150"  // 2150 = 21 R5
	
	// $options.license:=4D View license  // IF ANY NEEDED
	
	DIALOG("HDI"; $options; *)
	
End if 
