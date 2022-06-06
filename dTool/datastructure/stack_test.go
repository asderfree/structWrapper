package datastructure

import (
	"fmt"
	"reflect"
	"sync"
	"testing"
)

/**
 *@Author: hawkingdong
 *@Time: 2022/5/6:14:12
 *@Version: v1.0.0
 *@File: stack_test.go
 *@Info:
 *@Desc:
**/

var stack *DStack

func init() {
	stack = NewStack()
}

func BenchmarkDStack_Push(b *testing.B) {
	for i := 0; i < b.N; i++ {
		stack.Push("test")
	}
	fmt.Println(stack.length)
}

func BenchmarkDStack_Pop(b *testing.B) {
	b.StopTimer()
	for i := 0; i < b.N; i++ {
		stack.Push("test")
	}
	b.StartTimer()
	for i := 0; i < b.N; i++ {
		stack.Pop()
	}
}

func TestDStack_Length(t *testing.T) {
	tests := []struct {
		name  string
		value interface{}
		want  uint
	}{
		// TODO: Add test cases.
		{"test", 1, 1},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := NewStack()
			s.Push(tt.value)
			if got := s.Length(); got != tt.want {
				t.Errorf("Length() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestDStack_Pop(t *testing.T) {
	type fields struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	tests := []struct {
		name   string
		fields fields
		want   *sNode
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &DStack{
				top:    tt.fields.top,
				length: tt.fields.length,
				lock:   tt.fields.lock,
			}
			if got := s.Pop(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Pop() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestDStack_Push(t *testing.T) {
	type fields struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	type args struct {
		value interface{}
	}
	tests := []struct {
		name   string
		fields fields
		args   args
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &DStack{
				top:    tt.fields.top,
				length: tt.fields.length,
				lock:   tt.fields.lock,
			}
			s.Push(tt.args.value)
		})
	}
}

func TestDStack_Show(t *testing.T) {
	type fields struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	tests := []struct {
		name   string
		fields fields
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &DStack{
				top:    tt.fields.top,
				length: tt.fields.length,
				lock:   tt.fields.lock,
			}
			s.Show()
		})
	}
}

func TestDStack_Top(t *testing.T) {
	type fields struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	tests := []struct {
		name   string
		fields fields
		want   *sNode
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &DStack{
				top:    tt.fields.top,
				length: tt.fields.length,
				lock:   tt.fields.lock,
			}
			if got := s.Top(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("Top() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestDStack_TopValue(t *testing.T) {
	type fields struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	tests := []struct {
		name   string
		fields fields
		want   interface{}
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := &DStack{
				top:    tt.fields.top,
				length: tt.fields.length,
				lock:   tt.fields.lock,
			}
			if got := s.TopValue(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("TopValue() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestNewStack(t *testing.T) {
	tests := []struct {
		name string
		want *DStack
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := NewStack(); !reflect.DeepEqual(got, tt.want) {
				t.Errorf("NewStack() = %v, want %v", got, tt.want)
			}
		})
	}
}
