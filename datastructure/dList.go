package datastructure

/**
 * @Author: asderfree
 * @Email: asderfree@163.com
 * @File: dList
 * @Date: 2022/5/5 23:13
 * @Desc: go data struct List
**/

type node struct {
	Value interface{}
	next  *node
}

type DList struct {
	root   *node
	length uint
}

func (d *DList) Length() uint {
	return d.length
}

func (d *DList) IsEmpty() bool {
	return d.length == 0
}

func (d *DList) Insert(value interface{}) bool {
	n := node{value, nil}
	if d.IsEmpty() {
		d.root = &n
		d.length++
		return true
	}
	t := d.root
	for t.next != nil {
		t = t.next
	}
	t.next = &n
	d.length++
	return true
}

func (d *DList) Delete(value interface{}) bool {
	if d.IsEmpty() {
		return false
	}
	t := d.root
	if t.Value == value {
		d.root = t.next
		d.length--
		return true
	}
	for t.next != nil && t.next.Value != value {
		t = t.next
	}
	if t.next == nil {
		return false
	}
	t.next = t.next.next
	d.length--
	return true
}

func NewDList() DList {
	return DList{
		root:   nil,
		length: 0,
	}
}
