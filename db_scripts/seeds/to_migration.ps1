#Pegar o diretório atual através de uma variável
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent


#Arquivo saída com todos sql

$outputFile = Join-Path - Path $scriptDirectory -ChildPath "migration.sql"


#Verifica se o arquivo já existe, se existir deleta
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

#Pega Conteúdo dos arquivos
$sqlFiles = Get-childItem -Path $scriptDirectory - Filter *.sql -File | Sort-Object Name


# Concatena Arquivos
foreach ($file in $sqlFiles){
  Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
 "GO" | Out-File -Append -FilePath $outputFile
}

#Mensagem de Conclusão
Write-Host "Todos os arquivos foram combinados em $outputFile"