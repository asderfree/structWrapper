package leetcode

import (
	"reflect"
	"testing"
)

func TestConstructor(t *testing.T) {
	type args struct {
		words []string
	}
	tests := []struct {
		name string
		args args
		want WordFilter
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := Constructor(tt.args.words); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Constructor() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_pre(t *testing.T) {
	type args struct {
		word   string
		prefix string
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := pre(tt.args.word, tt.args.prefix); got != tt.want {
				t.Errorf("pre() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_suf(t *testing.T) {
	type args struct {
		word   string
		suffix string
	}
	tests := []struct {
		name string
		args args
		want bool
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := suf(tt.args.word, tt.args.suffix); got != tt.want {
				t.Errorf("suf() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestWordFilter_F(t *testing.T) {
	type args struct {
		prefix string
		suffix string
	}
	tests := []struct {
		name string
		this *WordFilter
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", &WordFilter{words: []string{"apple"}, n: 1}, args{prefix: "a", suffix: "e"}, 0},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := tt.this.F(tt.args.prefix, tt.args.suffix); got != tt.want {
				t.Errorf("WordFilter.F() = %v, want %v", got, tt.want)
			}
		})
	}
}
