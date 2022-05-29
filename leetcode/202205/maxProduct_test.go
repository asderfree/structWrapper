package leetcode

import "testing"

func Test_maxProduct(t *testing.T) {
	type args struct {
		words []string
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[]string{"aaa", "bbb", "cc", "ddddd", "abcadewedewadef", "ivvvvv"}}, 10},
		//"abcw","baz","foo","bar","xtfn","abcdef" 16
		{"test1", args{[]string{"abcw", "baz", "foo", "bar", "xtfn", "abcdef"}}, 16},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := maxProduct(tt.args.words); got != tt.want {
				t.Errorf("maxProduct() = %v, want %v", got, tt.want)
			}
		})
	}
}
