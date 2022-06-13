class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        @val = val
        @neighbors = []
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    visited = Set.new()
    queue = [starting_node]

    until queue.empty?
        if queue[0].val == target_value
            return queue[0]
        else
            visited.add(queue[0].val)
            queue[0].neighbors.each do |neighbor|
                queue << neighbor unless visited.include?(neighbor.val)
            end
            queue.shift         
        end
    end
    
    nil
end