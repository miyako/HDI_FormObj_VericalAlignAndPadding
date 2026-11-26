// UI language follows the OS language (en fallback)
var $language : Text
$language:=Get database localization(User system localization)
SET DATABASE LOCALIZATION(($language="ja@") ? "ja" : "en")

00_Start 
