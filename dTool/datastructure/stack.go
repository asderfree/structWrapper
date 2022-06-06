package datastructure

import (
	"fmt"
	"sync"
)

/**
 *@Author: hawkingdong
 *@Time: 2022/5/6:13:54
 *@Version: v1.0.0
 *@File: stack
 *@Info: 自实现的stack
 *@Desc: 栈的操作: Push Pop Length Top
**/

type (
	DStack struct {
		top    *sNode
		length uint
		lock   *sync.RWMutex
	}
	sNode struct {
		Value interface{}
		prev  *sNode
	}
)

// NewStack will return a nil stack
func NewStack() *DStack {
	return &DStack{nil, 0, &sync.RWMutex{}}
}

// Push  a new node to the stack
func (s *DStack) Push(value interface{}) {
	s.lock.Lock()
	defer s.lock.Unlock() // 运行完成解锁
	n := sNode{value, s.top}
	s.length++
	s.top = &n
}

// Top return the top node
func (s *DStack) Top() *sNode {
	return s.top
}

// TopValue get the top node value of the stack
func (s *DStack) TopValue() interface{} {
	if s.length == 0 {
		return nil
	}
	return s.Top().Value
}

// Pop will pop a node from the stack
func (s *DStack) Pop() *sNode {
	s.lock.Lock()
	defer s.lock.Unlock()
	if s.length == 0 {
		return nil
	}
	n := s.top
	s.top = n.prev
	s.length--
	return n
}

func (s *DStack) Length() uint {
	return s.length
}

func (s *DStack) Show() {
	n := s.top
	fmt.Printf("Top -> Below:")
	for n != nil {
		fmt.Printf("%v", n.Value)
		if n.prev != nil {
			fmt.Printf(" -> ")
		}
	}
	fmt.Printf("\n")
}
