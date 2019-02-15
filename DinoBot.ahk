#NoEnv  
SendMode Input  
#SingleInstance Force 
SetBatchLines -1   
F6::
;2950
start:
Send {Space}
loop
{
	while (A_Index<2950)
	{
	
		PixelSearch, Ppx, Ppy, 780,223,790,260,0x535353, 10, Fast
		tooltip, %A_Index%
		if ErrorLevel  			;NOT FOUND
		{
	
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

	
