#include <Array.au3>

global $sweetQuotes[1] = ["combat at it's finest"]
global $waitCount = 7200
while True
	if ($waitCount >= 7200) Then
		Local $dData = InetRead("https://raw.githubusercontent.com/TheTacoScott/CombatAtItsFinest/master/foo.txt")
		Local $sData = BinaryToString($dData)
		$sweetQuotes = StringSplit($sData,@CRLF)
		$waitCount = 0
	EndIf
	_ArrayShuffle($sweetQuotes)
	ClipPut(StringUpper($sweetQuotes[0]) & "!")
	Sleep(1000)
	$waitCount += 1
WEnd