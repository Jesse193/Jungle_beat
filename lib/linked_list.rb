class LinkedList
  attr_reader :name, :data, :list, :node
  attr_accessor :head, :next_node, :tail
  def initialize
    @head = nil
    @tail = nil
    @counter = 0
    
  end

  def append(data)
    if @head != nil
      @head.next_node = Node.new(data)
      
    else
      @head = Node.new(data)
    end
    @counter += 1
  end

  def count
    @counter
  end
  
  def to_string
    current_node = head
    # require 'pry'; binding.pry
    string = []
    while current_node != nil
      string << current_node.data
      current_node = current_node.next_node
    end
    string.join(" ")
  end
  
  def prepend(data)
    if @head == nil
      @head = Node.new(data)
      @counter += 1
    elsif @head != nil
      current_head = @head
      @head = Node.new(data)
      @head.next_node = current_head
      @counter += 1
      
    end
  end

  def pos_at(node, pos, counter = 0)
    return node if pos == counter
    pos_at(node.next_node, pos, counter += 1)
  end

  def insert(pos, data)
    @counter += 1
    node = Node.new(data)
    next_node = pos_at(head, pos)
    pos_at(head, pos - 1).next_node = node
    node.next_node = node
    node.next_node = next_node
    return node
  end

  


  

end

