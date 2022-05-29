package leetcode

import "bytes"

/**
 * @Desciption: 6. Zigzag Conversion
 * @Info: https://leetcode.com/problems/zigzag-conversion/
 */

func convert(s string, numRows int) string {
	buffers := make([]bytes.Buffer, numRows)
	for i := range buffers {
		var buffer bytes.Buffer
		buffers[i] = buffer
	}

	i := 0
	length := len(s)
	for i < length {
		for r := 0; r < numRows && i < length; r++ {
			buffers[r].WriteByte(s[i])
			i++
		}
		for r := numRows - 2; r > 0 && i < length; r-- {
			buffers[r].WriteByte(s[i])
			i++
		}
	}

	for _, b := range buffers[1:] {
		buffers[0].WriteString(b.String())
	}
	return buffers[0].String()
}
