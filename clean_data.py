import pandas as pd

# Danh sách 2 file cần làm sạch
files = [
    "UN_VNM_Seafood_Export_ByPartner_HS03_1604_1605_2015_2023.csv.csv",
    "UN_VNM_Seafood_World_ExportImport_HS03_1604_1605_2015_2023.csv"
]

# Các cột cần GIỮ LẠI cho Dashboard
cols_to_keep = ['refYear', 'flowDesc', 'partnerDesc', 'cmdDesc', 'qty', 'qtyUnitAbbr', 'primaryValue']

for file in files:
    df = pd.read_csv(file)
    # Chỉ giữ lại các cột cần thiết có trong file
    existing_cols = [c for col in cols_to_keep for c in df.columns if col.lower() == c.lower()]
    df_cleaned = df[existing_cols]
    # Lưu file mới
    df_cleaned.to_csv("cleaned_" + file, index=False)
    print(f"Đã làm sạch: {file}")