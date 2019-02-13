        
        
        
        $Creds = Get-Credential
        $DODID = read-host "What is the users DODID # "
        $User = Get-ADUser -Filter {employeeID -like $DODID} -searchbase "OU=Users,OU=NGPE,OU=States,DC=ng,DC=ds,DC=army,DC=mil" -Verbose      #-OtherAttributes @{'employeeID'=$user} 1535778694
        $samAccount = $($user.SamAccountName)
        $Path = "\\FileServer01\Path\to\ShareFolder\Profiles\$samAccount"

        #unassign the user from their virtual machine
        

            $session = New-PSSession –Computername ngpea0viewbroke.ng.ds.army.mil -Credential $Creds
            Invoke-Command -Session $session -ScriptBlock {Get-PSSnapin -name VMware* -Registered | Add-PSSnapin -Verbose
            #Connect-VIServer 22.22.22.22

            $vmDesktop = Get-DesktopVM | Where-Object {$_.user_sid -eq $(get-user -Name $User.sid)}
            Remove-UserOwnership -Machine_id $vmDesktop.machine_id -Verbose
            }



            Exit-PSSession -Verbose


<#
            Exit-PSSession 
           


           $SPath = [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)
Set-Location $SPath

$Session = New-PSSession -ComputerName NGPEA0ViewBroke -Credential $credential Invoke-Command -Session $Session -ScriptBlock { Get-PSSnapin -name VMware* -Registered | Add-PSSnapin Get-DesktopVM }





            
            Add-PSSnapin -Name VMware.ImageBuilder
            Invoke-command -ScriptBlock {Add-PSSnapin -Name VMware.DeployAutomation}
            Add-PSSnapin -Name VMware.VimAutomation.Core
            Add-PSSnapin -Name VMware.View.Broker
          

             
           
            Connect-VIServer 55.195.251.50                  
            Get-DesktopVM 

                       

        
            -Verbose
            Write-Host "User was not unassigned from their VM"
           

 

Enable-WSManCredSSP -Role server
Enable-WSManCredSSP -Role Client -DelegateComputer 
exit
1139034771




#>
# SIG # Begin signature block
# MIILwwYJKoZIhvcNAQcCoIILtDCCC7ACAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUkdt6mo1A6uV41PRcA11e4Gf/
# bJWggglJMIIEiTCCA3GgAwIBAgIDB3yXMA0GCSqGSIb3DQEBBQUAMFoxCzAJBgNV
# BAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAKBgNVBAsTA0RvRDEM
# MAoGA1UECxMDUEtJMRUwEwYDVQQDEwxET0QgSUQgQ0EtMzMwHhcNMTYwNDE5MDAw
# MDAwWhcNMTkwNDE4MjM1OTU5WjB6MQswCQYDVQQGEwJVUzEYMBYGA1UEChMPVS5T
# LiBHb3Zlcm5tZW50MQwwCgYDVQQLEwNEb0QxDDAKBgNVBAsTA1BLSTEMMAoGA1UE
# CxMDVVNBMScwJQYDVQQDEx5IT05FWUNVVFQuSkFNRVMuSkFZLjExMzkwMzQ3NzEw
# ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCTsA+2uvDuVI3Ab/7T/yHD
# Gv9frrG0gkQw6biJfxcs1q9hY32P/NphoQ1fS+Qr61Wo82rdkMLSxzfnh1QJXJDo
# jlGxf594QJTwWMe15cqKFgRmTdkPskNtDC2+zYcpppZJpcnwwVknvf02wsXm1vrb
# jkvx5NdnMfafHmRTVupCQIeexymxqK5lVg9qM9t2pEZSiIGVEg8hA7tQvSG+SIQW
# BNX04Va/n68B2S5ovdnJtYtSOl3YdOos9Z+wJENll1BkZN2VvDqPjkWXVPZvWgpt
# 8h8Qtv3X4wWNNMO1wwRS8t88w6odFZ6VxMi2/oXYBnai7v2bXNckCNBtuhsLlXsB
# AgMBAAGjggE2MIIBMjAfBgNVHSMEGDAWgBQtjtnUg/LikIxLn2/5RudqS828JzA3
# BgNVHR8EMDAuMCygKqAohiZodHRwOi8vY3JsLmRpc2EubWlsL2NybC9ET0RJRENB
# XzMzLmNybDAOBgNVHQ8BAf8EBAMCBsAwIwYDVR0gBBwwGjALBglghkgBZQIBCwkw
# CwYJYIZIAWUCAQsTMB0GA1UdDgQWBBQPh68gE3hhhqJJkYSLS1gzh5vmKzBlBggr
# BgEFBQcBAQRZMFcwMwYIKwYBBQUHMAKGJ2h0dHA6Ly9jcmwuZGlzYS5taWwvc2ln
# bi9ET0RJRENBXzMzLmNlcjAgBggrBgEFBQcwAYYUaHR0cDovL29jc3AuZGlzYS5t
# aWwwGwYDVR0JBBQwEjAQBggrBgEFBQcJBDEEEwJVUzANBgkqhkiG9w0BAQUFAAOC
# AQEAK60iq1rAxRzVJ4DRy9W9bmvkvXiA1y7oVBCwuG/AM0QnP97lKn/BJ0w5LzdE
# 8dzkDT3SkFouUiFpGE2JmOb+bM5gkJfOjBLxRHuY51TBGMkoMehZvkC31C/pNuUr
# 1Arbeo6H6xrnjnzmwWTPa5pS6BYIdrAXOxyQSmisfFP36ZWjeTldWjWlna5twhXc
# Fv7gngjLSmZa+ogSarMR4dkY1viyK6t81rAzAIEAsMK5i1EyYQRfZlpLanveBoXq
# NwZtUhozfqpzoV/mHvBegF5Wgkk+WWnVZUQufi/1KdMbMQ8kICNceN4/Q84GN70W
# TVmA91a09EV8Nvd/8lZXNa0X2zCCBLgwggOgoAMCAQICAgecMA0GCSqGSIb3DQEB
# BQUAMFsxCzAJBgNVBAYTAlVTMRgwFgYDVQQKEw9VLlMuIEdvdmVybm1lbnQxDDAK
# BgNVBAsTA0RvRDEMMAoGA1UECxMDUEtJMRYwFAYDVQQDEw1Eb0QgUm9vdCBDQSAy
# MB4XDTE1MDkyMzEzMzIzMloXDTIxMDkyMjEzMzIzMlowWjELMAkGA1UEBhMCVVMx
# GDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDEMMAoGA1UECxMDRG9EMQwwCgYDVQQL
# EwNQS0kxFTATBgNVBAMTDERPRCBJRCBDQS0zMzCCASIwDQYJKoZIhvcNAQEBBQAD
# ggEPADCCAQoCggEBAMd9/e1cslPIsJ7YvM9PN+ZuqOTem/WWz4NgMGxmbARxANGl
# vS64FqlTXUaxTfi+9yFX2Ia6XQfUju9mRrAX3pEzwCuP4NFj8KMQ3jvo6QQw266f
# 5jq8VpWbHmOo6UrxE5mHQR7qpXZ4fh257jO/3POtza1B2b6vU+fsBCXpL4STpLWv
# dvlj0IU5qERg8/wtJOxGFSMVgV6jQ0qm2+Hk/vZGr3WSjLgC4Vf0L4o9VAuxMsWB
# k+Rj3JTbwg7UcZqN/e75omTKay7l6svAyTZ0JkH0UhJJ2ERtd/lAELGLNhpgXNjO
# 51F4c5n5gIxtw0DbOxeg9JsMpj7qzNuxROq0MfMCAwEAAaOCAYUwggGBMB0GA1Ud
# DgQWBBQtjtnUg/LikIxLn2/5RudqS828JzAfBgNVHSMEGDAWgBRJdLsMXrp6/gJU
# 73ugxpXGCYBwljASBgNVHRMBAf8ECDAGAQH/AgEAMAwGA1UdJAQFMAOAAQAwDgYD
# VR0PAQH/BAQDAgGGMGYGA1UdIARfMF0wCwYJYIZIAWUCAQsFMAsGCWCGSAFlAgEL
# CTALBglghkgBZQIBCxEwCwYJYIZIAWUCAQsSMAsGCWCGSAFlAgELEzAMBgpghkgB
# ZQMCAQMaMAwGCmCGSAFlAwIBAxswNwYDVR0fBDAwLjAsoCqgKIYmaHR0cDovL2Ny
# bC5kaXNhLm1pbC9jcmwvRE9EUk9PVENBMi5jcmwwbAYIKwYBBQUHAQEEYDBeMDoG
# CCsGAQUFBzAChi5odHRwOi8vY3JsLmRpc2EubWlsL2lzc3VlZHRvL0RPRFJPT1RD
# QTJfSVQucDdjMCAGCCsGAQUFBzABhhRodHRwOi8vb2NzcC5kaXNhLm1pbDANBgkq
# hkiG9w0BAQUFAAOCAQEAs6gdswqrzxIYBIBQ/f3m7RQ5umt3OSbVvtRkYL8NgZtK
# 1UNzTXnK/gtWJ8E7+H7rfu+a3Wtke+zA8rMyWMzOotJzun99MZuXRij4Bkux4jw9
# z4eO1y2PzfnLgI9JqMFwjliuep9Lr11OQysawHqpW2lDmGpMgsOuz88/hQTUlpU8
# a4xJBvK6s1CGO1V1/DLXnLSeua2oZ7Wq7U7foLDsxAhC1hcKEbz81e6VK2PVUpyk
# fLI7rJ8SuCf29HEZNkW5V1HtxlJ/X13ww51ENwoELW0nHw1jngGzyXS2Flu+WEs7
# MltN2pqzotmgSWVNRPu4byZJu3MPHJAFubSQ+UkYpjGCAeQwggHgAgEBMGEwWjEL
# MAkGA1UEBhMCVVMxGDAWBgNVBAoTD1UuUy4gR292ZXJubWVudDEMMAoGA1UECxMD
# RG9EMQwwCgYDVQQLEwNQS0kxFTATBgNVBAMTDERPRCBJRCBDQS0zMwIDB3yXMAkG
# BSsOAwIaBQCgWjAYBgorBgEEAYI3AgEMMQowCKACgAChAoAAMBkGCSqGSIb3DQEJ
# AzEMBgorBgEEAYI3AgEEMCMGCSqGSIb3DQEJBDEWBBRRjWibOWJ5jQhFcXB+gART
# mdspYDANBgkqhkiG9w0BAQEFAASCAQBFRzolqP4qptmnpuJS47CyArog5ZnRbhoP
# 5pjZkYZ5iZsP04LCWY5TBwf9YW0QUw0KYbmqZ8RTtnlmdPXUGi1r9O55qYkl3Uue
# Mb6djRy8AHMPXobZK3DL4ZtZhnnFaJfwtMxZMUt45P6H5vUaOIfWsuhKZX5OUW4k
# rLlJhMTpnVdABTWls/lWGT65qVgnE0br4Ce8YpM5KvfVv+Mw/xtCvMdloY5OKj5x
# EmWcigHidiHaQrXDc4Xuox3+NyTr4yEUlfcpD2c21DppuEdgcP2CilSOCsgY602v
# E83170ZwCtKxtHBRzoLQwRJMlT/HuVmWJA0DoWTCRExUfM7OLsuV
# SIG # End signature block
