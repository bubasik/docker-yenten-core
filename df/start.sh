echo test
echo $YENTEN_DATA

cp yenten.conf $YENTEN_DATA

cd $YENTEN_DATA
if [ ! -f ./blocks/blk00000.dat ]; then
wget https://github.com/yentencoin/yenten/releases/download/5.0.0/yenten_block_data_standard.zip
unzip yenten_block_data_standard.zip
rm yenten_block_data_standard.zip
fi

ls
cd ..
ls

#./yentend -version -datadir="$YENTEN_DATA"
./yentend -datadir="$YENTEN_DATA"
