#!/bin/bash

dir=$(echo "${0%/*}")

cd $dir/Scripts/libsvm-3.22


echo
echo "___________________"
echo "libSVM compilling"
echo "___________________"
echo
make clean  &> /dev/null
make        &> /dev/null
echo

echo "___________________"
echo "protr installing"
echo "___________________"
echo
Rscript $dir/Scripts/protr.R  $dir/Scripts/protr_1.2-1.tar



echo "_______________________"
echo "Transdecoder installing"
echo "_______________________"
echo
cd $dir/Scripts/TransDecoder-3.0.1
make clean &> /dev/null
make       &> /dev/null

cd ..


echo "_______________________"
echo "Extracting the zip file "
echo "_______________________"
echo

cd $dir/Model
unzip $dir/Model/Combine_Model.zip  



chmod 777 $dir/PrESOgenesis 

chmod 777 -R  $dir/Scripts   $dir/Scripts/TransDecoder-3.0.1  $dir/Scripts/libsvm-3.22

echo
