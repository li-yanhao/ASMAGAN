
export HOME=/home/ipol

cd $HOME

echo HELLO > $HOME/stdout.txt


# python main.py \
#     --mode test --cuda 0 \
#     --version ASMAfinal  \
#     --dataloader_workers 8   \
#     --testImgRoot ./bench/ \
#     --nodeName localhost \
#     --checkpoint 350000 \
#     --testScriptsName common_useage \
#     --specify_sytle 8  > stdout.txt