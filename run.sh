
# export HOME=/home/ipol

# cd $HOME
touch stdout.txt

pwd
echo HELLO

mkdir -p $bin/input/
cp input_0.png $bin/input/

cd $bin
ls
ls ./input/
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