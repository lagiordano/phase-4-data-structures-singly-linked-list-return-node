require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    return if n < 1 || !head
    i = 1
    current_node = head

    while current_node.next_node
      current_node = current_node.next_node
      i += 1
    end
    index = i - n 

    return if index < 0
    
    current_node = head 
    i = 0
    until i == index
      current_node = current_node.next_node
      i += 1
    end
    current_node.value

  end

end
