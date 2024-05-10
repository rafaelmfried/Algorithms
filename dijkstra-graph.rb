# Dijkstra Graph

class Graph
  attr_accessor :nodes

  def initialize
    @nodes = {}
  end

  def add_node(name, neighbors)
    @nodes[name] = neighbors
  end

  def dijkstra(start_node)
    distances = {}
    previous = {}
    unvisited = @nodes.keys

    @nodes.each do |node, _|
      distances[node] = Float::INFINITY
      previous[node] = nil
    end

    distances[start_node] = 0

    while unvisited.any?
      current_node = unvisited.min_by { |node| distances[node] }
      unvisited.delete(current_node)

      break if distances[current_node] == Float::INFINITY

      @nodes[current_node].each do |neighbor, weight|
        alt = distances[current_node] + weight
        if alt < distances[neighbor]
          distances[neighbor] = alt
          previous[neighbor] = current_node
        end
      end
    end

    return distances, previous
  end

  def shortest_path(start_node, end_node)
    distances, previous = dijkstra(start_node)
    path = []
    current_node = end_node

    while previous[current_node]
      path.unshift(current_node)
      current_node = previous[current_node]
    end

    path.unshift(start_node)

    return distances[end_node], path
  end
end

graph = Graph.new
graph.add_node('A', {'B' => 4, 'E' => 9})
graph.add_node('B', {'A' => 4, 'C' => 11, 'E' => 6})
graph.add_node('C', {'B' => 2, 'D' => 7, 'E' => 6, 'F' => 5, 'G' => 10})
graph.add_node('D', {'C' => 7, 'G' => 3})
graph.add_node('E', {'A' => 9, 'B' => 6, 'C' => 8, 'F' => 5, 'H' => 12})
graph.add_node('F', {'C' => 5, 'E' => 5})
graph.add_node('G', {'C' => 10, 'D' => 3, 'I' => 4})
graph.add_node('H', {'E' => 12, 'I' => 6})
graph.add_node('I', {'G' => 4, 'H' => 6})

distance, path = graph.shortest_path('A', 'I')
puts "Distância mais curta de A para I: #{distance}"
puts "Caminho mais curto de A para I: #{path.join(' -> ')}"
