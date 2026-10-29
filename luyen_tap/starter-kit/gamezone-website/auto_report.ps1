# Tac gia: Tran Tuan Anh
# Ngay tao: 10/29/2026

"=== BAO CAO LOI GAMEZONE ===" > .\logs\auto_report.txt 
Get-Content .\logs\game.log | Select-String "ERROR" >> .\logs\auto_report.txt
Write-Host "Da tao bao cao: thanh con"
