[root@k8s-m1 txt_dir]# cat txt2
start: 15312381601 rate: 100 count:14013  1
        [707,1104,4,11,923]
        [720,148,48,1,120]
        [731,224,24,2,946]
        [733,772,72,7,504]
        [735,5116,16,51,1549]
end: 1536612684
test line
start: 1536681601 rate: 100 count:14013   2
        [707,1104,4,11,923]
        [720,148,48,1,120]
        [733,772,72,7,504]
        [731,224,24,2,946]
        [733,772,72,7,504]
        [735,5116,16,51,1549]
end: 1536681684
start: 1536991601 rate: 100 count:14013   3
        [707,1104,4,11,923]
        [720,148,48,1,120]
        [731,224,24,2,946]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [735,5116,16,51,1549]
end: 1536681689
[root@k8s-m1 txt_dir]# awk '/start/,/end/{if($0~"start")i=0;a[i++]=$0}END{len=length(a);for(i=0;i<len;i++)print a[i]}' txt2
start: 1536991601 rate: 100 count:14013   3
        [707,1104,4,11,923]
        [720,148,48,1,120]
        [731,224,24,2,946]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [733,772,72,7,504]
        [735,5116,16,51,1549]
end: 1536681689
取最后一个块
