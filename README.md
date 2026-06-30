# Phân tích xu hướng và dự báo xuất nhập khẩu thủy sản Việt Nam giai đoạn 2015–2025

Dự án tốt nghiệp tập trung phân tích xu hướng xuất nhập khẩu thủy sản Việt Nam trong giai đoạn 2015–2025, kết hợp xử lý dữ liệu bằng Python và trực quan hóa bằng Tableau nhằm hỗ trợ đánh giá biến động thị trường, cơ cấu sản phẩm, thị trường xuất khẩu chủ lực và xu hướng phát triển trong tương lai.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

---

## Mô tả dự án

Đề án này được thực hiện nhằm phân tích tình hình xuất khẩu và nhập khẩu thủy sản Việt Nam trong giai đoạn 2015–2025. Dự án sử dụng dữ liệu thương mại từ UN Comtrade, Cục Hải quan Việt Nam và Asemconnect/VITIC để xây dựng bộ dữ liệu phục vụ phân tích.

Nội dung chính của dự án bao gồm:

- Phân tích xu hướng xuất khẩu và nhập khẩu thủy sản Việt Nam theo thời gian.
- Phân tích cán cân thương mại của ngành thủy sản.
- So sánh các nhóm hàng thủy sản theo mã HS.
- Phân tích các thị trường xuất khẩu chủ lực của thủy sản Việt Nam.
- Trực quan hóa dữ liệu bằng Tableau.
- Xây dựng nhận xét, đánh giá và đề xuất dựa trên kết quả phân tích.

---

## Thành viên nhóm

| STT | Họ và tên | Vai trò |
|---:|---|---|
| 1 | Doãn Thúc Định | Leader & Data Storyteller |
| 2 | Diệp Thế Tài | Data Processing & Modeling |
| 3 | Nguyễn Minh Sang | Visualization & Dashboard |
| 4 | Nguyễn Sỹ Toàn | Report & Documentation |

---

## Mục tiêu dự án

Dự án hướng đến các mục tiêu sau:

- Hiểu rõ xu hướng tăng trưởng và biến động của ngành thủy sản Việt Nam.
- Xác định sự thay đổi trong hoạt động xuất khẩu và nhập khẩu thủy sản.
- Phân tích vai trò của các nhóm sản phẩm thủy sản chính.
- Xác định các thị trường xuất khẩu quan trọng của Việt Nam.
- Xây dựng dashboard trực quan phục vụ phân tích và trình bày kết quả.
- Đưa ra nhận xét, kết luận và khuyến nghị dựa trên dữ liệu.

---

## Nguồn dữ liệu

Dữ liệu trong dự án được tổng hợp từ nhiều nguồn khác nhau:

| Giai đoạn | Nguồn dữ liệu | Nội dung |
|---|---|---|
| 2015–2023 | UN Comtrade | Dữ liệu xuất khẩu, nhập khẩu thủy sản Việt Nam theo mã HS03, HS1604, HS1605 |
| 2024 | Cục Hải quan Việt Nam | Dữ liệu tổng kim ngạch xuất khẩu thủy sản năm 2024 |
| 2025 | Asemconnect/VITIC | Dữ liệu xuất khẩu, nhập khẩu thủy sản năm 2025 dựa trên số liệu sơ bộ của Cục Hải quan |

Do UN Comtrade chưa cập nhật đầy đủ dữ liệu đến năm 2025 tại thời điểm thực hiện dự án, nhóm bổ sung dữ liệu năm 2024–2025 từ Cục Hải quan Việt Nam và Asemconnect/VITIC.

---

## Mô tả bộ dữ liệu

Dự án sử dụng các file dữ liệu chính sau:

| File dữ liệu | Nội dung |
|---|---|
| `UN_VNM_Seafood_World_ExportImport_HS03_1604_1605_2015_2023.csv` | Dữ liệu tổng xuất khẩu và nhập khẩu thủy sản Việt Nam giai đoạn 2015–2023 |
| `UN_VNM_Seafood_Export_ByPartner_HS03_1604_1605_2015_2023.csv` | Dữ liệu xuất khẩu thủy sản Việt Nam theo thị trường đối tác giai đoạn 2015–2023 |
| `VN_Seafood_2024_2025_Customs_VITIC.csv` | Dữ liệu bổ sung năm 2024–2025 từ Cục Hải quan và Asemconnect/VITIC |

Các trường dữ liệu chính bao gồm:

| Cột | Ý nghĩa |
|---|---|
| `Year` | Năm |
| `Flow` | Loại giao dịch, gồm Exports và Imports |
| `Partner` | Thị trường đối tác |
| `HS_Code` | Mã HS của nhóm hàng thủy sản |
| `Product_Group` | Nhóm sản phẩm thủy sản |
| `Data_Level` | Cấp dữ liệu, gồm Total, Export Market hoặc Import Market |
| `Trade_Value_USD` | Giá trị thương mại theo USD |
| `Trade_Value_Billion_USD` | Giá trị thương mại theo tỷ USD |
| `Source` | Nguồn dữ liệu |

---

## Mã HS sử dụng trong dự án

| Mã HS | Nhóm hàng |
|---|---|
| HS03 | Cá, giáp xác, nhuyễn thể và động vật thủy sinh |
| HS1604 | Cá chế biến hoặc bảo quản |
| HS1605 | Giáp xác, nhuyễn thể chế biến hoặc bảo quản |

---

## Quy trình xử lý dữ liệu

Quy trình thực hiện dự án gồm các bước chính:

1. Thu thập dữ liệu từ UN Comtrade, Cục Hải quan Việt Nam và Asemconnect/VITIC.
2. Làm sạch dữ liệu bằng Python.
3. Loại bỏ các cột không cần thiết.
4. Chuẩn hóa tên cột, kiểu dữ liệu, đơn vị và tên thị trường.
5. Chuyển đổi dữ liệu, tạo thêm các cột như `Product_Group`, `Data_Level`, `Trade_Value_Billion_USD`.
6. Mô hình hóa dữ liệu thành các bảng phục vụ phân tích tổng quan và phân tích thị trường.
7. Trực quan hóa dữ liệu bằng Tableau.
8. Phân tích xu hướng và xây dựng phần nhận xét, kết luận.

---

## Chuẩn hóa và chuyển đổi dữ liệu

Trong quá trình xử lý, nhóm thực hiện các bước chuẩn hóa và chuyển đổi dữ liệu như sau:

- Đổi tên các cột dữ liệu sang dạng dễ hiểu.
- Chuẩn hóa giá trị `Flow` thành `Exports` và `Imports`.
- Chuẩn hóa tên quốc gia/thị trường như `United States`, `China`, `Japan`.
- Chuẩn hóa mã HS thành `03`, `1604`, `1605`.
- Tạo cột `Product_Group` để phân loại nhóm sản phẩm theo mã HS.
- Chuyển đổi giá trị thương mại từ USD sang tỷ USD.
- Tạo cột `Data_Level` để phân biệt dữ liệu tổng, dữ liệu thị trường xuất khẩu và dữ liệu thị trường nhập khẩu.
- Tách riêng dữ liệu tổng và dữ liệu theo thị trường để tránh trùng lặp khi phân tích.

---

## Dữ liệu sau xử lý

Sau quá trình làm sạch và chuyển đổi, dữ liệu được tổ chức thành các bảng chính:

| File sau xử lý | Mục đích sử dụng |
|---|---|
| `seafood_total_2015_2025.csv` | Phân tích xu hướng xuất khẩu, nhập khẩu và cán cân thương mại |
| `seafood_export_market_2015_2025.csv` | Phân tích các thị trường xuất khẩu chính |
| `seafood_import_market_2025.csv` | Phân tích thị trường nhập khẩu năm 2025 |

Các file sau xử lý được sử dụng để xây dựng dashboard và phân tích trực quan bằng Tableau.

---

## Công nghệ sử dụng

| Công nghệ | Mục đích |
|---|---|
| Python | Xử lý, làm sạch và phân tích dữ liệu |
| Pandas | Đọc, xử lý và biến đổi dữ liệu dạng bảng |
| NumPy | Hỗ trợ tính toán dữ liệu |
| Matplotlib / Seaborn / Plotly | Trực quan hóa dữ liệu trong quá trình phân tích |
| Jupyter Notebook | Ghi lại quy trình xử lý và phân tích dữ liệu |
| Tableau | Xây dựng dashboard trực quan |
| GitHub | Quản lý mã nguồn và tài liệu dự án |
| Microsoft Word / PowerPoint | Viết báo cáo và chuẩn bị thuyết trình |

---

## Cấu trúc thư mục dự án

```text
Phan_tich_xuat_nhap_khau_thuy_san_VietNam/
│
├── data/                              # Thư mục chứa toàn bộ dữ liệu
│   ├── raw/                           # Dữ liệu thô tải về ban đầu
│   │   ├── UN_VNM_Seafood_World_ExportImport_HS03_1604_1605_2015_2023.csv
│   │   ├── UN_VNM_Seafood_Export_ByPartner_HS03_1604_1605_2015_2023.csv
│   │   └── VN_Seafood_2024_2025_Customs_VITIC.csv
│   │
│   └── processed/                     # Dữ liệu đã làm sạch và xử lý
│       ├── seafood_total_2015_2025.csv
│       ├── seafood_export_market_2015_2025.csv
│       └── seafood_import_market_2025.csv
│
├── notebooks/                         # Các Jupyter Notebook phân tích từng bước
│   ├── 01_data_collection.ipynb        # Thu thập dữ liệu
│   ├── 02_data_cleaning.ipynb          # Làm sạch dữ liệu
│   ├── 03_data_transformation.ipynb    # Chuyển đổi và chuẩn hóa dữ liệu
│   ├── 04_data_analysis.ipynb          # Phân tích dữ liệu
│   ├── 05_visualization.ipynb          # Trực quan hóa dữ liệu
│   └── 06_forecasting.ipynb            # Dự báo xu hướng
│
├── src/                               # Code Python tái sử dụng
│   ├── __init__.py
│   ├── data_processing.py
│   ├── visualization.py
│   └── modeling.py
│
├── dashboard/                         # File Tableau Dashboard
│   └── seafood_trade_dashboard.twbx
│
├── reports/                           # Báo cáo và tài liệu trình bày
│   ├── figures/                       # Hình ảnh, biểu đồ xuất từ dashboard
│   ├── final_report.docx              # Báo cáo hoàn chỉnh
│   └── presentation.pptx              # Slide thuyết trình
│
├── docs/                              # Tài liệu dự án
│   ├── de-cuong-du-an.docx
│   ├── tai-lieu-tham-khao.md
│   └── meeting_notes/
│
├── requirements.txt                   # Danh sách thư viện Python
├── README.md                          # Tài liệu mô tả dự án
├── .gitignore                         # Cấu hình bỏ qua file không cần upload
└── LICENSE                            # Giấy phép dự án
