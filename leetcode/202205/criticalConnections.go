package leetcode

/**
 *@Author: hawkingdong
 *@Time: 2022/5/7:11:45
 *@Version: v1.0.0
 *@File: pattern
 *@Info: 1192. Critical Connections in a Network
 *@Desc: https://leetcode.com/problems/critical-connections-in-a-network/
**/

/**
 * @description: 强连接 DFS solution
 * @return {*}
 */
func criticalConnections(n int, connections [][]int) [][]int {
	var buildGraph func() [][]int
	buildGraph = func() [][]int {
		graph := make([][]int, n, n)
		for _, v := range connections {
			src, dest := v[0], v[1]
			graph[src] = append(graph[src], dest)
			graph[dest] = append(graph[dest], src)
		}
		return graph
	}
	// 邻接表
	graph := buildGraph()

	res, timer := [][]int{}, 0
	visited, timeStamps := make([]bool, n), make([]int, n)
	var criticalConnectionsHelperDFS func(curVertex, prevVertex int)
	criticalConnectionsHelperDFS = func(curVertex, prevVertex int) {
		visited[curVertex] = true
		timeStamps[curVertex] = timer
		timer++
		curTimeStamp := timeStamps[curVertex]
		for _, v := range graph[curVertex] {
			if v == prevVertex {
				continue
			}
			if !visited[v] {
				criticalConnectionsHelperDFS(v, curVertex)
			}
			timeStamps[curVertex] = findMin(timeStamps[curVertex], timeStamps[v])
			if curTimeStamp < timeStamps[v] {
				res = append(res, []int{curVertex, v})
			}
		}
	}
	criticalConnectionsHelperDFS(0, -1)
	return res
}

func findMin(a, b int) int {
	if a <= b {
		return a
	}
	return b
}
