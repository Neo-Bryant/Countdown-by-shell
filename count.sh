#!/bin/bash
count () {
for j in `seq $h | sort -nr`
do
	for i in `seq $m | sort -nr`
	do
		for k in `seq 10 | sort -nr`
        	do
			echo "倒计时$t分钟:"
			awk -F: '{print $'$j',$'$i',$'$k'}' /root/D.sh 
		#	for l in {1..7}
		#	do
		#	echo -e "`sed -nr  "${l}p" a.tmp`\r"
		#	done
			sleep 1
			clear 
		done
	done
done
}
read -p "倒计时$t分钟设置(默认15分钟,仅支持设置15分钟以内):" t
t=${t:-15}
case $t in
  "1")
        h=1
        m=6
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $1,$7,$1}' /root/D.sh
	echo -e "\033[?25l"
	sleep 1
        clear
	count;;
  "2")
        h=2
	m=2
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $2,$3,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
	count;;
  "3")
	h=2
        m=8
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $2,$9,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "4")
        h=3
        m=4
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $3,$5,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "5")
	h=3
        m=10
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $4,$1,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "6")
        h=4
        m=6
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $4,$7,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "7")
        h=5
        m=2
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $5,$3,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "8")
        h=5
        m=8
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $5,$9,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "9")
        h=6
        m=4
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $6,$5,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "10")
        h=6
        m=10
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $7,$1,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "11")
        h=7
        m=6
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $7,$7,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;; 
  "12")
        h=8
        m=2
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $8,$3,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "13")
        h=8
        m=8
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $8,$9,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "14")
        h=9
        m=4
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $9,$5,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;;
  "15")
        h=9
        m=10
	clear
	echo "倒计时$t分钟:"
	awk -F: '{print $10,$1,$1}' /root/D.sh
	echo -e "\033[?25l"
        sleep 1
        clear
        count;; 
   *)
	echo "请输入正确的格式";;
esac
echo -e "\033[?25h"
clear


