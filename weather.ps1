Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
function Get-Weather {
    param(
        [Parameter(Mandatory=$false)]
        [string]$City = "Dawsonville"
    )

    $url = "http://wttr.in/$City"
    
    (Invoke-WebRequest -Uri $url -UserAgent "curl" -UseBasicParsing).Content
}
Get-Weather
