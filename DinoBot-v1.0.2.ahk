  #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force 
SetBatchLines -1   
F6::
start:
obs:=0
jump:=0
duck:=0
Send {Space}
loop
{
	while (A_Index<2950)
	{
		tooltip, Current Command: RUN`nNumber of Obstacles Identified: %obs%`nNumber of Jumps: %jump%`nNumber of Ducks: %duck%`nNumber of Times Checked : %A_Index%,409, 226 ,1
		PixelSearch, Ppx, Ppy, 780,223,790,260,0x535353, 10, Fast
		if ErrorLevel  			;NOT FOUND
		{
	
		}
		else					;FOUND
		{
			if Ppy<231
			{
				tooltip, Current Command: DUCK`nNumber of Obstacles Identified: %obs%`nNumber of Jumps: %jump%`nNumber of Ducks: %duck%`nNumber of Times Checked : %A_Index%,409, 226 ,2
				Sleep 45
				Send {Down Down}
				
				sleep 500
				tooltip,,,,2
				Send {Down Up}
				obs++
				duck++
				
			}
			else
			{
				tooltip, Current Command: JUMP`nNumber of Obstacles Identified: %obs%`nNumber of Jumps: %jump%`nNumber of Ducks: %duck%`nNumber of Times Checked : %A_Index%,409, 226 ,3
				Sleep 45
				Send {Space Down}
				
				sleep 100
				tooltip,,,,3
				send {Space Up}
				obs++
				jump++
			}
		}
	}
		PixelSearch, Ppx4, Ppy4, 780,223,790,270,0xACACAC, 10, Fast
		tooltip, %Ppy% 
		if ErrorLevel  			;NOT FOUND
		{
			;Gosub, DarkOn
		}
		else					;FOUND
		{
			
			if Ppy<231
			{
				
				Send {Down Down}
				sleep 500
				tooltip,down!
				Send {Down Up}
				
			}
			else
			{
				Sleep 45
				Send {Space Down}
				sleep 100
				send {Space Up}
				
			}
		}
		
	
}
		
		/*
	DarkOn:
	{
		PixelSearch, Ppx4, Ppy4, 780,223,790,270,0xACACAC, 10, Fast
		tooltip, %Ppy% 
		if ErrorLevel  			;NOT FOUND
		{
			Gosub, DarkOn
		}
		else					;FOUND
		{
			
			if Ppy<231
			{
				
				Send {Down Down}
				sleep 500
				tooltip,down!
				Send {Down Up}
				
			}
			else
			{
				Sleep 45
				Send {Space Down}
				sleep 100
				send {Space Up}
				
			}
		}
	}*/

	
