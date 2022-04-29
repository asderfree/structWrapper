package datastructure

import "testing"

func TestGraph_addNode(t *testing.T) {
	type fields struct {
		nodes []*Node
		edges map[int][]*Node
	}
	type args struct {
		value int
	}
	tests := []struct {
		name   string
		fields fields
		args   args
		want   bool
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			g := &Graph{
				nodes: tt.fields.nodes,
				edges: tt.fields.edges,
			}
			if got := g.addNode(tt.args.value); got != tt.want {
				t.Errorf("addNode() = %v, want %v", got, tt.want)
			}
		})
	}
}

func TestGraph_addVertix(t *testing.T) {
	type fields struct {
		nodes []*Node
		edges map[int][]*Node
	}
	type args struct {
		from int
		to   int
	}
	tests := []struct {
		name   string
		fields fields
		args   args
	}{
		// TODO: Add test cases.
		{"test1", fields{nodes: nil, edges: nil}, args{1, 2}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			g := &Graph{
				nodes: tt.fields.nodes,
				edges: tt.fields.edges,
			}
			g.addNode(1)
			g.addNode(2)
			g.addNode(3)
			g.addVertix(1, 2)
			g.addVertix(1,3)
			g.addVertix(2,3)
		})
	}
}

func TestGraph_isNodeExist(t *testing.T) {
	type fields struct {
		nodes []*Node
		edges map[int][]*Node
	}
	type args struct {
		value int
	}
	tests := []struct {
		name   string
		fields fields
		args   args
		want   bool
	}{
		// TODO: Add test cases.
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			g := &Graph{
				nodes: tt.fields.nodes,
				edges: tt.fields.edges,
			}
			if got := g.isNodeExist(tt.args.value); got != tt.want {
				t.Errorf("isNodeExist() = %v, want %v", got, tt.want)
			}
		})
	}
}
