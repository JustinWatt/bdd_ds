class Node

  attr_accessor :next, :data

  def initialize(data = nil)
    @next = nil
    @data = data
  end
end

class LinkedList
  include Enumerable

  attr_accessor :head, :tail

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
  end

  def node_count
    self.count
  end

  def delete(target)

    false if empty?

    traverse = head.next
    until traverse == tail
      if traverse.data == target
        traverse.data = traverse.next.data
        traverse.next = traverse.next.next
        return target
      else
        traverse = traverse.next
      end
    end
    false
  end

  def each &block
    traverse = head.next
    until traverse == tail
      yield traverse if block_given?
      traverse = traverse.next
    end
  end

  def empty?
    head.next == tail
  end

  def insert_to_front(data)
    new_node = Node.new(data)
    new_node.next = head.next
    head.next = new_node
  end

  def inspect
    collect { |x| x.data }
  end
end
