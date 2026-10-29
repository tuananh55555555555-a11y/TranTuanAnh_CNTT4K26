# BÀI LÀM – THI THỬ HACKATHON 02 (GAMEZONE)

- **Họ tên:  Trần Tuấn Ạnh** 
- **Lớp: CNTT4** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** 

## 4.2. Thao tác CLI

### Các lệnh đã chạy

```shell
pwd
ls
Move-Item cap_nhat.txt docs
Move-Item logo media
Copy-Item media backup
rm .tmp
cd logs
ls
cd ..\
ls

```

### Kết quả liệt kê toàn bộ dự án

```text

    Directory: E:\luyen_tap\starter-kit\gamezone-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/29/2026   8:23 AM                backup
d-----        10/29/2026   8:16 AM                data
d-----        10/29/2026   8:16 AM                docs
d-----        10/29/2026   8:16 AM                logs
d-----        10/29/2026   8:16 AM                media
-a----        10/29/2026   8:16 AM             70 .env
-a----        10/29/2026   8:16 AM            225 auto_report.ps1
-a----        10/29/2026   8:26 AM           1548 bai_lam.md

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
 Get-Content logs/game.log | Select-String "ERROR" > logs/daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game

```

## 4.4. README.md

> Chấm trực tiếp trên `README.md` ở gốc dự án.

- [x] Heading 1
- [x] Mô tả in đậm + in nghiêng
- [x] Bảng `Thư mục | Nội dung` (≥3 dòng)
- [x] Code block lệnh liệt kê
- [x] Task list (≥2 việc, ≥1 đã xong)
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report

### Lệnh chạy

```shell
notepad auto_report.ps1
# Tac gia: Tran Tuan Anh
# Ngay tao: 10/29/2026

"=== BAO CAO LOI GAMEZONE ===" > .\logs\auto_report.txt 
Get-Content .\logs\game.log | Select-String "ERROR" >> .\logs\auto_report.txt
Write-Host "Da tao bao cao: thanh con"

```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI GAMEZONE ===

2025-11-05 08:03:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:09:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:12:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:39:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:42:15 [ERROR] Mat ket noi may chu game
2025-11-05 08:51:15 [ERROR] Loi luu tien trinh choi



```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (Get-Content logs/game.log | Select-String "ERROR").count

```

### Kết quả đếm

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
New-Item logs/tong_hop.txt
=== TONG HOP LOG GAMEZONE === > logs/tong_hop.txt
Get-Content logs/game.log | Select-String "WARNING" > logs/game.log
(Get-Content logs/game.log | Select-String "ERROR").count > logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG GAMEZONE ===

2025-11-05 08:54:15 [WARNING] May chu qua tai CPU 90%


6

```

## 4.8. Excel

> Chấm trực tiếp trên file `data/giao_dich_thang_11.xlsx`.
