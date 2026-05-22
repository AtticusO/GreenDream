function remove-path {
    param (
        [string]$pathToRemove
    )
    $cleaned = ([Environment]::GetEnvironmentVariable("PATH", "User") -split ";" | Where-Object { $_ -ne $pathToRemove }) -join ";"

    [Environment]::SetEnvironmentVariable("PATH", $cleaned, "User")
}
function add-path {
    param (
        [string]$pathToAdd
    )
    [Environment]::SetEnvironmentVariable(
        "PATH",
        "$env:PATH;$pathToAdd",
        "User"
    )

}
if ($env:PATH -notlike "*C:\Users\apors\Documents\GreenDream*") {
   add-path "C:\Users\apors\Documents\GreenDream"
}
