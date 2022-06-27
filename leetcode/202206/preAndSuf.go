package leetcode

/**
 * @ Description: 745. Prefix and Suffix Search
 * @Info: https://leetcode.com/problems/prefix-and-suffix-search/
 * TODO: Can you finish this problem with a tire?
 */

type WordFilter struct {
	words []string
	n     int
}

func Constructor(words []string) WordFilter {
	return WordFilter{
		words: words,
		n:     len(words),
	}
}

func pre(word, prefix string) bool {
	if len(prefix) > len(word) {
		return false
	}
	for i := 0; i < len(prefix); i++ {
		if prefix[i] != word[i] {
			return false
		}
	}
	return true
}

func suf(word, suffix string) bool {
	if len(suffix) > len(word) {
		return false
	}
	len1, len2 := len(suffix), len(word)
	for i := 1; i <= len(suffix); i++ {
		if suffix[len1-i] != word[len2-i] {
			return false
		}
	}
	return true
}

func (wf *WordFilter) F(prefix string, suffix string) int {
	for i := wf.n - 1; i >= 0; i-- {
		if pre(wf.words[i], prefix) && suf(wf.words[i], suffix) {
			return i
		}
	}
	return -1
}

/**
 * Your WordFilter object will be instantiated and called as such:
 * obj := Constructor(words);
 * param_1 := obj.F(prefix,suffix);
 */
