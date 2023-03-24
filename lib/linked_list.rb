class LinkedList
  attr_reader :name, :data
  attr_accessor :head, :next_node
  def initialize
    @head = nil
    @tail = nil
    @counter = 0
  
  end

  def append(data)
    if @head == nil
      node = Node.new(data)
      @head = node
      @counter += 1
    elsif
      @next_node = Node.new(data)
      @counter += 1
    end
  end

  def count
    @counter
  end

  def to_string
    if @next_node == nil
      head.data
    else
      head.data + " " + next_node.data
    end
  end
    
end

