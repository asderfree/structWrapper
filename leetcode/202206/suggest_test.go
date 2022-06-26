package leetcode

import (
	"reflect"
	"testing"
)

func Test_suggestedProducts(t *testing.T) {
	type args struct {
		products   []string
		searchWord string
	}
	tests := []struct {
		name string
		args args
		want [][]string
	}{
		// TODO: Add test cases.
		{"test1", args{products: []string{"a", "abca", "aaca"}, searchWord: "abcd"}, [][]string{{"a", "aaca", "abca"}, {"abca"}, {"abca"}, {}}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := suggestedProducts(tt.args.products, tt.args.searchWord); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("suggestedProducts() = %v, want %v", got, tt.want)
			}
		})
	}
}
