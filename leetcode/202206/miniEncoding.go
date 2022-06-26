package leetcode

/**
 * @description: 820. Short Encoding of Words
 * @Info: https://leetcode.com/problems/short-encoding-of-words/
 * tire后缀搜索树,叶子节点的个数的长度和即为最小长度
*/
func minimumLengthEncoding(words []string) int {
    var t = New()
    
    for _, w := range words {
        t.addReverse(w+"#")
    }
    
    return t.sumDepth()
}

// trie represents a prefix tree of words to be kept
// char by char
type trie map[rune]trie

// New returns empty trie
func New() trie {
    return make(trie)
}

// addReverse adds a string to a given trie in reversed order from last to first char
func (t trie) addReverse(s string) {
    if s == "" {
        return
    }
    if t == nil {
        t = New()
    }
    
	// take last char
    var c = rune(s[len(s)-1])
    if t[c] == nil {
        t[c] = New()
    }
	
    // add rest of chars
    t[c].addReverse(s[:len(s)-1])
}

// sumDepth retuns sum of all depths of all branches in a given trie
func (t trie) sumDepth() int {
    var sum int
    
	// f is a recursive DFS funciton to walk through all tree branches 
    var f func(trie, int)  
    f = func(t trie, d int)  {
	    // if length of this trie node is 0 then it's a leaf node
		// then add accumulated value to the total sum and stop iteration 
        if len(t) == 0 {
            sum += d
            return 
        }
        d++
        for _, t2 := range t {
            f(t2, d)
        }
    }
    
    f(t, 0)
    
    return sum
}