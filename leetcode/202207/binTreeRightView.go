package leetcode

/**
 * @Description:199. Binary Tree Right Side View
 * @Info:https://leetcode.com/problems/binary-tree-right-side-view/
 * @Resolve: bin tree's level order traversal
 */

// Definition for a binary tree node.
type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func rightSideView(root *TreeNode) []int {
	ans := []int{}
	fifo := []*TreeNode{}
	if root == nil {
		return ans
	}
	fifo = append(fifo, root)
	for len(fifo) > 0 {
		count := len(fifo)
		for i := 0; i < count; i++ {
			node := fifo[0]
			fifo = fifo[1:]
			if i == count-1 {
				ans = append(ans, node.Val)
			}
			if node.Left != nil {
				fifo = append(fifo, node.Left)
			}
			if node.Right != nil {
				fifo = append(fifo, node.Right)
			}
		}
	}
	return ans
}
