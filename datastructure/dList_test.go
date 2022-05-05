package datastructure

import (
	"fmt"
	"reflect"
	"testing"
)

/**
 * @Author: asderfree
 * @Email: asderfree@163.com
 * @File: dList_test.go
 * @Date: 2022/5/5 23:25
 * @Desc:
**/

func TestDList_Delete(t *testing.T) {
	tList := NewDList()
	for i := 0; i < 10; i++ {
		tList.Insert(i)
	}
	type want struct {
		has    bool
		length uint
	}
	type args struct {
		value interface{}
	}
	tests := []struct {
		name string
		list DList
		args args
		want want
	}{
		{"deleteIn", tList, args{0}, want{true, tList.length - 1}},
		{"deleteIn1", tList, args{-1}, want{false, tList.length}},
	}
	fmt.Printf("the length of the list is: %d\n", tList.length)
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			d := tt.list
			if got := d.Delete(tt.args.value); got != tt.want.has || d.length != tt.want.length {
				t.Errorf("Delete() = %v, %d, want %v", got, d.length, tt.want)
			}
		})
	}
	fmt.Printf("the length of the list is: %d\n", tList.length)
}

func TestDList_Insert(t *testing.T) {
	n := &node{
		Value: 0,
		next:  nil,
	}
	type fields struct {
		root   *node
		length uint
	}
	type args struct {
		value interface{}
	}
	tests := []struct {
		name   string
		fields fields
		args   args
		want   uint
	}{
		{"test1", fields{nil, 0}, args{1}, 1},
		{"test2", fields{n, 1}, args{1}, 2},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			d := &DList{
				root:   tt.fields.root,
				length: tt.fields.length,
			}
			if got := d.Insert(tt.args.value); d.length != tt.want {
				t.Errorf("Insert() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestDList_IsEmpty(t *testing.T) {
	n := node{
		Value: 1,
		next:  nil,
	}
	type fields struct {
		root   *node
		length uint
	}
	tests := []struct {
		name   string
		fields fields
		want   bool
	}{
		{"is empty", fields{nil, 0}, true},
		{"not empty", fields{&n, 1}, false},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			d := &DList{
				root:   tt.fields.root,
				length: tt.fields.length,
			}
			if got := d.IsEmpty(); got != tt.want {
				t.Errorf("IsEmpty() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestDList_Length(t *testing.T) {
	testEmpty := NewDList()
	testLength1 := NewDList()
	testLength1.Insert(1)
	tests := []struct {
		name string
		list DList
		want uint
	}{
		{name: "empty list", list: testEmpty, want: 0},
		{name: "lenth1", list: testLength1, want: 1},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			d := tt.list
			if got := d.Length(); got != tt.want {
				t.Errorf("Length() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestNew(t *testing.T) {
	tests := []struct {
		name string
		want DList
	}{
		{"new dlist test", DList{nil, 0}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := NewDList(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("New() = %v, want %v", got, tt.want)
			}
		})
	}
}
