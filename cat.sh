#!/bin/bash

# 指定 rawdata 資料夾的路徑
raw_dir="/Users/mei/Desktop/MRSA"

# 指定輸出目錄的路徑
output_dir="/Users/mei/Desktop/MRSA/output"

# 迴圈處理 01-09 的檔案
for i in {1..9}
do
  # 建立目標目錄路徑
  target_dir="${raw_dir}/barcode0${i}"
  
  # 建立輸出檔案路徑
  output_file="${output_dir}/barcode0${i}.gz"
  
  # 切換到目標目錄
  cd "$target_dir"
  
  # 將目錄中的檔案合併到輸出檔案中
  cat * > "$output_file"
done

# 迴圈處理 10-12 的檔案
for i in {10..12}
do
  # 建立目標目錄路徑
  target_dir="${raw_dir}/barcode${i}"
  
  # 建立輸出檔案路徑
  output_file="${output_dir}/barcode${i}.gz"
  
  # 切換到目標目錄
  cd "$target_dir"
  
  # 將目錄中的檔案合併到輸出檔案中
  cat * > "$output_file"
done
