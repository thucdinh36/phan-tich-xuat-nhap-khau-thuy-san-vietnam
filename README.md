# Phân Tích Xuất Nhập Khẩu Thủy Sản Việt Nam (2015-2025)

Phân tích xu hướng và dự báo thị trường xuất nhập khẩu thủy sản Việt Nam giai đoạn 2015-2025.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-F37626?style=for-the-badge&logo=jupyter&logoColor=white)

## 📋 Mô tả dự án

Đề án tốt nghiệp tập trung phân tích:
- Xu hướng xuất nhập khẩu thủy sản Việt Nam trong 11 năm (2015-2025)
- Các mặt hàng chủ lực (tôm, cá tra, cá ngừ, mực...)
- Các thị trường xuất khẩu chính (Mỹ, Nhật Bản, Trung Quốc, EU...)
- Các yếu tố ảnh hưởng và dự báo xu hướng trong tương lai

## 👥 Thành viên nhóm

| STT | Họ và tên              | Vai trò                          |
|-----|------------------------|----------------------------------|
| 1   | Doãn Thúc Định         | Leader & Data Storyteller        |
| 2   | Diệp Thế Tài           | Data Processing & Modeling       |
| 3   | Nguyễn Minh Sang       | Visualization & Dashboard        |
| 4   | Nguyễn Sỹ Toàn         | Report & Documentation           |

## 🎯 Mục tiêu dự án

- Hiểu rõ xu hướng tăng trưởng và biến động của ngành thủy sản Việt Nam
- Xây dựng mô hình dự báo ngắn hạn và trung hạn
- Đưa ra khuyến nghị chiến lược cho doanh nghiệp và cơ quan quản lý
- Áp dụng đầy đủ các CLO của môn học (Data Cleaning, Visualization, Storytelling...)

## 🛠️ Công nghệ sử dụng

- **Ngôn ngữ lập trình**: Python 3
- **Thư viện chính**: Pandas, NumPy, Matplotlib, Seaborn, Plotly, Prophet/ARIMA
- **Công cụ trực quan**: Tableau / Power BI
- **Công cụ khác**: Jupyter Notebook, Git, GitHub
- **Báo cáo**: Microsoft Word & PowerPoint

### 📁 Cấu trúc thư mục dự án

Dự án được tổ chức theo cấu trúc chuẩn của một dự án Data Science:

```bash
Phan_tich_xuat_nhap_khau_thuy_san_VietNam/
├── data/                          # Thư mục chứa toàn bộ dữ liệu
│   ├── raw/                       # Dữ liệu thô tải về ban đầu (Excel, CSV...)
│   └── processed/                 # Dữ liệu đã cleaning và xử lý
│
├── notebooks/                     # Các Jupyter Notebook phân tích từng bước
│   ├── 01_data_collection.ipynb   # Thu thập dữ liệu
│   ├── 02_data_cleaning.ipynb     # Làm sạch dữ liệu (CLO3, CLO4)
│   ├── 03_eda.ipynb               # Phân tích khám phá dữ liệu
│   ├── 04_visualization.ipynb     # Trực quan hóa dữ liệu (CLO6)
│   └── 05_forecasting.ipynb       # Xây dựng mô hình dự báo
│
├── src/                           # Code Python tái sử dụng
│   ├── __init__.py
│   ├── data_preprocessing.py
│   ├── visualization.py
│   └── modeling.py
│
├── reports/                       # Báo cáo và kết quả trình bày
│   ├── figures/                   # Lưu tất cả biểu đồ và dashboard
│   ├── final_report.docx          # Báo cáo Word hoàn chỉnh
│   └── presentation.pptx          # Slide PowerPoint thuyết trình
│
├── docs/                          # Tài liệu dự án
│   ├── de-cuong-du-an.docx        # Đề cương chi tiết
│   ├── tai-lieu-tham-khao.md      # Danh sách tài liệu tham khảo
│   └── meeting_notes/             # Biên bản họp nhóm
│
├── requirements.txt               # Danh sách thư viện Python
├── README.md
├── .gitignore
└── LICENSE
