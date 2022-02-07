Function Menu 
{
    Clear-Host

    Do
    {
        Clear-Host
        Write-Host -Object 'Check Github repo https://github.com/Jeffrey-Fazal/screencopy/blob/main/README.md for instructions'
        Write-Host -Object 'Please choose an option'
        Write-Host -Object '**********************'
        Write-Host -Object 'Scrcpy' -ForegroundColor Yellow
        Write-Host -Object '**********************'
        Write-Host -Object '1.  Launch Scrcpy '
		Write-Host -Object ''
        Write-Host -Object '2.  Switch to WiFi '
		Write-Host -Object ''
		Write-Host -Object '3.  Switch to USB '
		Write-Host -Object ''
        Write-Host -Object 'Q.  Quit'
		Set-Variable -Name "IP" -Value "192.168.0.152"
		Write-Host "`nYour Phone is set to the IP '$IP'"
        Write-Host -Object $errout
        $Menu = Read-Host -Prompt '(0-3 or Q to Quit)'
 
        switch ($Menu) 
        {
           1 
            {
                scrcpy 
            }
            2 
            {
                    adb kill-server
                    $title    = 'Change IP'
                    $question = 'Do you want to change your phone IP address'
                    $choices  = '&Yes', '&No'
                    
                    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
                    if ($decision -eq 0) {
                        $IP = Read-Host -Prompt 'Set your IP Address'
                        Write-Host "Your Phone's IP Address is '$IP' `nStarting Wireless Screen Copy" 
                        adb tcpip 5555
                        adb connect $IP
                        scrcpy -b2M -m800
                    } else {
                        write-host("Starting Wireless Screen Copy")
                        adb tcpip 5555
                        adb connect $IP
                        scrcpy -b2M -m800
                    }
            }
            3 
            {
                
                adb kill-server
                Write-Host "Connect phone via USB"
                Write-Host "Press any key to continue..."
                $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
                adb usb
                scrcpy 
            }
            Q 
            {
                Exit
            }   
            default
            {
                $errout = 'Invalid option please try again........Try 0-3 or Q only'
            }
 
        }
    }
    until ($Menu -eq 'q')
}   
 
# Launch The Menu
Menu
