# Minimum Spanning

class Graph
    attr_accessor :vertices, :adjacency_list
  
    def initialize
      @vertices = []
      @adjacency_list = {}
    end
  
    def add_vertex(vertex)
      @vertices << vertex
      @adjacency_list[vertex] = {}
    end
  
    def add_edge(vertex1, vertex2, weight)
      @adjacency_list[vertex1][vertex2] = weight
      @adjacency_list[vertex2][vertex1] = weight
    end
  
    def prim_mst(start_vertex)
      visited = { start_vertex => true }
      mst = []
      total_weight = 0
  
      until visited.size == @vertices.size
        min_edge = nil
  
        visited.each do |vertex, _|
          @adjacency_list[vertex].each do |adjacent_vertex, weight|
            next if visited[adjacent_vertex]
  
            if min_edge.nil? || weight < min_edge[:weight]
              min_edge = { vertex1: vertex, vertex2: adjacent_vertex, weight: weight }
            end
          end
        end
  
        mst << min_edge
        total_weight += min_edge[:weight]
        visited[min_edge[:vertex2]] = true
      end
  
      { mst: mst, total_weight: total_weight }
    end
  end
  
  graph = Graph.new
  graph.add_vertex('A')
  graph.add_vertex('B')
  graph.add_vertex('C')
  graph.add_vertex('D')
  graph.add_vertex('E')
  
  graph.add_edge('A', 'B', 2)
  graph.add_edge('A', 'C', 3)
  graph.add_edge('B', 'C', 1)
  graph.add_edge('B', 'D', 1)
  graph.add_edge('C', 'D', 1)
  graph.add_edge('C', 'E', 4)
  graph.add_edge('D', 'E', 2)
  
  result = graph.prim_mst('A')
  puts "Minimum Spanning Tree: #{result[:mst]}"
  puts "Total Weight: #{result[:total_weight]}"
  