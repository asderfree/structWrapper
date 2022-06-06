package leetcode

/**
 * Definition for singly-linked list.
 * @Description: 160. Intersection of Two Linked Lists
 * @Info: https://leetcode.com/problems/intersection-of-two-linked-lists/
 */

type ListNode struct {
	Val  int
	Next *ListNode
}

// 直接遍历两个链表 除去开始相同部分 即为交叉点
func getIntersectionNode(headA, headB *ListNode) *ListNode {
	if headA == nil || headB == nil {
		return nil
	}
	tempA, tempB := headA, headB
	for tempA != tempB {
		if tempA == nil {
			tempA = headB
		} else {
			tempA = tempA.Next
		}
		if tempB == nil {
			tempB = headA
		} else {
			tempB = tempB.Next
		}
	}
	return tempA
}
