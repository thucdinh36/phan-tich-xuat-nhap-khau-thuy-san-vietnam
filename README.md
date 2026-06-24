# Phân Tích Xuất Nhập Khẩu Thủy Sản Việt Nam (2015-2025)

Phân tích xu hướng và dự báo thị trường xuất nhập khẩu thủy sản Việt Nam giai đoạn 2015-2025.

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-E97627?style=for-the-badge&logo=tableau&logoColor=white)

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

Phan_tich_xuat_nhap_khau_thuy_san_VietNam/
├── data/                      # Thư mục chứa tất cả dữ liệu
│   ├── raw/                   # Dữ liệu tải về ban đầu (Excel, CSV thô)
│   └── processed/             # Dữ liệu đã cleaning và xử lý
│
├── notebooks/                 # Các file Jupyter Notebook (phân tích từng bước)
│   ├── 01_data_collection.ipynb     # Thu thập dữ liệu
│   ├── 02_data_cleaning.ipynb       # Làm sạch dữ liệu (CLO3,4)
│   ├── 03_eda.ipynb                 # Phân tích khám phá (Exploratory Data Analysis)
│   ├── 04_visualization.ipynb       # Trực quan hóa
│   └── 05_forecasting.ipynb         # Xây dựng mô hình dự báo
│
├── src/                       # Code Python tái sử dụng (functions)
│   ├── __init__.py
│   ├── data_preprocessing.py
│   ├── visualization.py
│   └── modeling.py
│
├── reports/                   # Báo cáo, slide và hình ảnh
│   ├── figures/               # Lưu tất cả biểu đồ, dashboard
│   ├── final_report.docx
│   └── presentation.pptx
│
├── docs/                      # Tài liệu dự án
│   ├── de-cuong.docx
│   ├── tai-lieu-tham-khao.md
│   └── meeting_notes/
│
├── requirements.txt           # Danh sách thư viện Python
├── README.md
├── .gitignore
└── LICENSE
