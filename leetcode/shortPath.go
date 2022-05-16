package leetcode

import "fmt"

/**
 *@Author: hawkingdong
 *@Time: 2022/5/11:21:11
 *@Version: v1.0.0
 *@File: count
 *@Info: 1091. Shortest Path in Binary Matrix
 *@Desc: https://leetcode.com/problems/shortest-path-in-binary-matrix/
**/

func shortestPathBinaryMatrix(grid [][]int) int {
	x0, y0 := 0, 0                        // x0 y0 is the begin position of the martix
	x1, y1 := len(grid[0])-1, len(grid)-1 // x1 y1 is the target position of the robot
	// fmt.Println(x0, y0, x1, y1)
	shortPath := -1
	var findPath func(x, y, z int)
	findPath = func(xi, yi, path int) {
		if xi == x1 && yi == y1 {
			// has arrived the target
			if shortPath == -1 || (shortPath > path) {
				fmt.Println("yes")
				shortPath = path
			}
			return
		}
		if xi < x1 && grid[xi+1][yi] == 0 {
			findPath(xi+1, yi, path+1)
		}
		if yi+1 < y1 && grid[xi][yi+1] == 0 {
			findPath(xi, yi+1, path+1)
		}
		if xi+1 < x1 && yi+1 < y1 && grid[xi+1][yi+1] == 0 {
			findPath(xi+1, yi+1, path+1)
		}
	}
	findPath(x0, y0, 0)

	return shortPath
}
