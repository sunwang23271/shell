#思路如下，首先通过正则匹配找到两文件之间相同的关键词（最后一列文件名肯定相同$NF)，放到word.txt中，之后通过for循环把zuo1.txt文件内容中的绝对路径文件放到zuo3.txt中。
 
 
 #!/bin/bash
 awk -F '/' '{print $NF}' zuo2.txt > /tmp/word.txt

for word in  `cat /tmp/word.txt`
do
	sed  -n '/'$word'/'p  /tmp/zuo1.txt >> /tmp/zuo3.txt  #因为$表示行尾，所以我给$word加了引号，否则匹配是空。
done
