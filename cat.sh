#!/bin/bash

# 指定 rawdata 資料夾的路徑
raw_dir="/Users/mei/Desktop/MRSA"

# 指定輸出目錄的路徑
output_dir="/Users/mei/Desktop/MRSA/raw_cat"

# 迴圈處理 01-12 的檔案
for i in {1..12}
do
  # 建立目標目錄路徑
  target_dir="${raw_dir}/barcode$(printf "%02d" $i)"
  
  # 建立輸出檔案路徑
  output_file="${output_dir}//barcode$(printf "%02d" $i).gz"
  
  # 切換到目標目錄
  cd "$target_dir"
  
  # 將目錄中的檔案合併到輸出檔案中
  cat * > "$output_file"
done
