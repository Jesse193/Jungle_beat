class LinkedList
  attr_reader :name
  attr_accessor :head
  def initialize
    @head = nil
    @tail = nil
    @counter = 0
  
  end

  def append(data)
    node = Node.new(data)
    @head = node
    @counter += 1
  end

  def count
    @counter
  end
    
end

