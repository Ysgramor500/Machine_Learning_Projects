#!/bin/bash
echo "Downloading IPCA Data"

wget -O IPCA.zip https://ftp.ibge.gov.br/Precos_Indices_de_Precos_ao_Consumidor/IPCA/Serie_Historica/ipca_SerieHist.zip | tr -d '\r'
echo "Unzipping file"
unzip IPCA.zip ; unzip IPCA.zip
echo "Removing already unzipped file"
rm IPCA.zip; rm IPCA.zip
echo "Downloading Exp Imp Data"
wget --no-check-certificate https://balanca.economia.gov.br/balanca/SH/TOTAL.xlsx 
ls
echo "Downloading CRB Index Data"
wget -O CRB_Index.csv https://stooq.com/q/d/l/?s=^cry&i=d
rm wget-log; rm wget-log
