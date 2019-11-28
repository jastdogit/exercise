package main

import (
	"fmt"
)

var sli = []int{1, 43, 54, 62, 21, 66, 32, 78, 36, 76, 39}

func bubbleSort(sli []int) []int {
	len := len(sli)
	//该层循环控制 需要冒泡的轮数
	for i := 1; i < len; i++ {
		//该层循环用来控制每轮 冒出一个数 需要比较的次数
		for j := 0; j < len-1; j++ {
			if sli[i] < sli[j] {
				sli[i], sli[j] = sli[j], sli[i]
			}
			fmt.Println("->", sli)
		}
		fmt.Println("---->", sli)
	}
	return sli
}

func main() {
	fmt.Println(bubbleSort(sli))
}
