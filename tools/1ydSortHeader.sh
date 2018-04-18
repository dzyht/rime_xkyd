cp -rf ../rime/xkydcz.dict.yaml ../BackDict/
cp -rf ../rime/xkyddz.dict.yaml ../BackDict/
cp -rf ../rime/xkydyw.dict.yaml ../BackDict/
cp -rf ../rime/xkydjm.dict.yaml ../BackDict/
git add ../BackDict/xkydcz.dict.yaml ../BackDict/xkyddz.dict.yaml ../BackDict/xkydyw.dict.yaml ../rime/xkydjm.dict.yaml
git commit -m "更新：备份旧词库"
echo 开始处理排序
sort -t $'\t' -k 2 词组.txt > xkydcz.dict.yaml
sort -t $'\t' -k 2 单字.txt > xkyddz.dict.yaml
sort -t $'\t' -k 2 英文.txt > xkydyw.dict.yaml
sort -t $'\t' -k 2 简码.txt > xkydjm.dict.yaml
cp -rf xkydcz.dict.yaml ./词组.txt
cp -rf xkyddz.dict.yaml ./单字.txt
cp -rf xkydyw.dict.yaml ./英文.txt
cp -rf xkydjm.dict.yaml ./简码.txt
echo 更为当前文件
sed -i 's/\b爸爸\b\tbaba/---\nname: xkydcz\nversion: "Q1"\nsort: by_weight\n...\n&/' xkydcz.dict.yaml
sed -i 's/\b那\b\ta/---\nname: xkyddz\nversion: "Q1"\nsort: by_weight\n...\n&/' xkyddz.dict.yaml
sed -i 's/\bAA制\b\taaz/---\nname: xkydyw\nversion: "Q1"\nsort: by_weight\n...\n&/' xkydyw.dict.yaml
sed -i 's/\b不错\b\tbc/---\nname: xkydjm\nversion: "Q1"\nsort: by_weight\n...\n&/' xkydjm.dict.yaml
echo 执行排序添加头部信息完成
cp -rf xkydcz.dict.yaml ../rime/
cp -rf xkyddz.dict.yaml ../rime/
cp -rf xkydyw.dict.yaml ../rime/
cp -rf xkydjm.dict.yaml ../rime/
echo 已放置到主词库中
