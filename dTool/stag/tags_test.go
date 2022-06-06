package stag

import (
	"reflect"
	"testing"
)

/**
 *@Author: hawkingdong
 *@Time: 2022/4/27:20:13
 *@Version: v1.0.0
 *@File: tags_test.go
 *@Info:
 *@Desc:
**/

func TestParse(t *testing.T) {
	type args struct {
		tag string
	}
	var tests = []struct {
		name    string
		args    args
		want    *Tags
		wantErr bool
	}{
		// TODO: Add test cases.
		{name: "test1", args: args{tag: "json:\"foo,omitempty\""}, want: nil, wantErr: false},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			got, err := Parse(tt.args.tag)
			if (err != nil) != tt.wantErr {
				t.Errorf("Parse() error = %v, wantErr %v", err, tt.wantErr)
				return
			}
			if !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Parse() got = %v, want %v", got, tt.want)
			}
		})
	}
}
