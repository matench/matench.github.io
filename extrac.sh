#!/bin/bash

# Nama awal file XML
prefix="sitemap-"

# Loop untuk setiap file XML
for xml_file in "${prefix}"*.xml; do
    # Ekstrak URL menggunakan sed dan simpan dalam file teks
    sed -n 's|<loc>\(.*\)</loc>|\1|p' "$xml_file" > "${xml_file%.xml}.txt"
    echo "URL dari $xml_file telah berhasil diekstrak dan disimpan dalam ${xml_file%.xml}.txt"
done
