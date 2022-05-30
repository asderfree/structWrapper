/*
 * @Author: hawkingdong hawkingdong@futunn.com
 * @Date: 2022-05-20 09:58:09
 * @LastEditors: hawkingdong hawkingdong@futunn.com
 * @LastEditTime: 2022-05-20 09:59:15
 * @FilePath: \test_env\leetcode\robot_test.go
 * @Description: 测试
 */
package leetcode

import "testing"

func Test_uniquePathsWithObstacles(t *testing.T) {
	type args struct {
		obstacleGrid [][]int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[][]int{{0,0,0},{0,1,0},{0,0,0}}}, 2},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := uniquePathsWithObstacles(tt.args.obstacleGrid); got != tt.want {
				t.Errorf("uniquePathsWithObstacles() = %v, want %v", got, tt.want)
			}
		})
	}
}
