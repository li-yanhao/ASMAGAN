
# export HOME=/home/ipol

# cd $HOME
touch stdout.txt

pwd >> stdout.txt
echo HELLO >> stdout.txt

cd $bin

cp input_0.png input/

python main.py \
    --mode test --cuda 0 \
    --version ASMAfinal  \
    --dataloader_workers 8   \
    --testImgRoot ./input/ \
    --nodeName localhost \
    --checkpoint 350000 \
    --testScriptsName common_useage \
    --specify_sytle 8 
    # >> $bin/stdout.txt