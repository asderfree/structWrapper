package leetcode

import (
	"reflect"
	"testing"
)

func Test_strongPasswordCheckerII(t *testing.T) {
	type args struct {
		password string
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
			if got := strongPasswordCheckerII(tt.args.password); got != tt.want {
				t.Errorf("strongPasswordCheckerII() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_successfulPairs(t *testing.T) {
	type args struct {
		spells  []int
		potions []int
		success int64
	}
	tests := []struct {
		name string
		args args
		want []int
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{5, 1, 3}, []int{1, 2, 3, 4, 5}, 7}, []int{4, 0, 3}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := successfulPairs(tt.args.spells, tt.args.potions, tt.args.success); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("successfulPairs() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_countSubarrays(t *testing.T) {
	type args struct {
		nums []int
		k    int64
	}
	tests := []struct {
		name string
		args args
		want int64
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 1, 1}, 5}, 5},
		{"test2", args{[]int{2, 1, 4, 3, 5}, 10}, 6},
		{"test3", args{[]int{4, 3, 5}, 11}, 3},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := countSubarrays(tt.args.nums, tt.args.k); got != tt.want {
				t.Errorf("countSubarrays() = %v, want %v", got, tt.want)
			}
		})
	}
}

func Test_firstSuccPos(t *testing.T) {
	type args struct {
		nums    []int
		spell   int64
		success int64
	}
	tests := []struct {
		name string
		args args
		want int
	}{
		// TODO: Add test cases.
		{"test1", args{[]int{1, 2, 3, 4, 5}, 2, 7}, 3},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := firstSuccPos(tt.args.nums, tt.args.spell, tt.args.success); got != tt.want {
				t.Errorf("firstSuccPos() = %v, want %v", got, tt.want)
			}
		})
	}
}
