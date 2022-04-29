package test

import "reflect"

/**
 *@Author: hawkingdong
 *@Time: 2022/4/19:18:08
 *@Version: v1.0.0
 *@File: t
 *@Info: test file for test some program
 *@Desc:
**/

func JudgeTypeTheSame(a, b interface{}) bool {
	a1 := reflect.ValueOf(a)
	b1 := reflect.ValueOf(b)
	if a1.Elem() != b1.Elem() {
		return false
	}
	return true
}
