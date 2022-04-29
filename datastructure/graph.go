package datastructure

type Node struct {
	v int
}

type Graph struct {
	nodes []*Node
	edges map[int][]*Node
}

func (g *Graph) addNode(value int) bool {
	node := Node{v: value}
	g.nodes = append(g.nodes, &node)
	return true
}

func (g *Graph) isNodeExist(value int) bool {
	for _, n := range g.nodes {
		if n.v == value {
			return true
		}
	}
	return false
}

func (g *Graph) addVertix(from, to int) {
	if g.isNodeExist(from) && g.isNodeExist(to) {
		n := Node{v: to}
		g.edges[from] = append(g.edges[from], &n)
	}
}

func (g *Graph) show() {

}
