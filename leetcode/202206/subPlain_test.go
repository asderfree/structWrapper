package leetcode

import "testing"

func Test_f(t *testing.T) {
	type args struct {
		s string
		i int
		j int
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := f(tt.args.s, tt.args.i, tt.args.j); got != tt.want {
				t.Errorf("f() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_subPlain(t *testing.T) {
	type args struct {
		s string
	}
	tests := []struct {
		name string
		args args
		want string
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := subPlain(tt.args.s); got != tt.want {
				t.Errorf("subPlain() = %v, want %v", got, tt.want)
			}
		})
	}
}
