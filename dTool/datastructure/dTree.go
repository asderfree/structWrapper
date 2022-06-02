package datastructure

/**
 * @Author: asderfree
 * @Email: asderfree@163.com
 * @File: dTree
 * @Date: 2022/5/6 22:42
 * @Desc: dTree will implements: bfs dfs insert show newTree
**/

type (
	tNode struct {
		Value       interface{}
		left, right *tNode
	}
	DTree struct {
		root *tNode
	}
)

func NewTree() *DTree {
	return &DTree{nil}
}

// Insert will insert a node in the position
func (d *DTree) Insert(position interface{}, node *tNode, left bool) bool {
	stack := NewStack()
	stack.Push(d.root)
	for stack.Length() > 0 {
		t := stack.Pop().Value.(tNode)
		if t.Value == position {
			if left {
				if t.left != nil {
					return false
				}
				t.left = node
			} else {
				if t.right != nil {
					return false
				}
				t.right = node
			}
			return true
		}
		if t.right != nil {
			stack.Push(t.right)
		}
		if t.left != nil {
			stack.Push(t.left)
		}
	}
	return false
}

// Prev the prev scan not f(f(x))
func (d *DTree) Prev() []tNode {
	var result []tNode
	stack := NewStack()
	if d.root == nil {
		return result
	}
	stack.Push(d.root)
	for stack.Length() > 0 {
		t := stack.Pop().Value.(tNode)
		result = append(result, t)
		if t.right != nil {
			stack.Push(t.right)
		}
		if t.left != nil {
			stack.Push(t.left)
		}
	}
	return result
}

// FPrev the prev scan with f(f())
func (d *tNode) FPrev(result []tNode) {
	if d == nil {
		return
	}
	result = append(result, *d)
	d.right.FPrev(result)
	d.left.FPrev(result)
}

// Prev the prev scan not f(f(x))
func (d *DTree) Midd() []tNode {
	var result []tNode
	stack := NewStack()
	if d.root == nil {
		return result
	}
	t := d.root
	for t != nil && stack.Length() > 0 {

	}
	return result
}

// FPrev the prev scan with f(f())
func (d *tNode) FMidd(result []tNode) {
	if d == nil {
		return
	}
	result = append(result, *d)
	d.right.FMidd(result)
	d.left.FMidd(result)
}
