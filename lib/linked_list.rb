class Node

  attr_reader :data
  attr_accessor :next

  def initialize(data=nil)
    @next = nil
    @data = data
  end

end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
  end

  def node_count
    count = 0
    traverse = head
    until traverse.next == tail
      count += 1
      traverse = traverse.next
    end
    count
  end

  def insert_to_front(data)
    new_node = Node.new(data)
    new_node.next = head.next
    head.next = new_node
  end
end
