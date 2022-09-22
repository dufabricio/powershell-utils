01.Function Disable-NetProxy
02.{
03.  Begin
04.    {
05.
06.            $regKey="HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings"
07.       
08.    }
09.   
10.    Process
11.    {
12.       
13.        Set-ItemProperty -path $regKey ProxyEnable -value 0 -ErrorAction Stop
14.
15.        Set-ItemProperty -path $regKey ProxyServer -value "" -ErrorAction Stop
16.                           
17.        Set-ItemProperty -path $regKey AutoConfigURL -Value "" -ErrorAction Stop       
18.      
19.    }
20.   
21.    End
22.    {
23.
24.        Write-Output "Proxy is now Disabled"
25.
26.             
27.    }
28.
29.}
