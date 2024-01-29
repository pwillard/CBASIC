
$filepath = "Cbasic3.pdf"

Write-Output "Working on $filePath"

# Note: This TRY block should work... but it doesn't... must troubleshoot later
try{
    $output = & asciidoctor-pdf --theme themes/pdf-theme.yml -a pdf-fontsdir=fonts cbasic3.asc -o $filePath 2>&1

}
catch{
    $string_err = $_ | Out-String
    Write-Host "*****************************"
    Write-Host $string_err
    Write-Host "*****************************"
}


# Now $output variable contains both regular output and errors (but it doesn't work as intended) 
Write-Host $output
Write-Host ""
Write-Host "Done"

