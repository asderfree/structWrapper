/*
 * @Date: 2022-05-25 09:48:31
 * @LastEditors: asderfree
 * @LastEditTime: 2022-05-25 10:14:55
 * @FilePath: \test_env\leetcode\RussianDoll_test.go
 * @Description:
 */
package leetcode

import "testing"

func Test_maxEnvelopes(t *testing.T) {
	type args struct {
		envelopes [][]int
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[][]int{{5, 4}, {6, 4}, {6, 7}, {2, 3}}}, 3},
		{"test2", args{[][]int{{46, 89}, {50, 53}, {52, 68}, {72, 45}, {77, 81}}}, 3},
		{"test3", args{[][]int{{10, 8}, {1, 12}, {6, 15}, {2, 18}}}, 2},
		//[[10,8],[1,12],[6,15],[2,18]]
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := maxEnvelopes(tt.args.envelopes); got != tt.want {
				t.Errorf("maxEnvelopes() = %v, want %v", got, tt.want)
			}
		})
	}
}
