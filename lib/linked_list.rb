class LinkedList
  attr_accessor :name, :head
  def initialize
    @head = nil
    @tail = nil
  
  end

  def append(data)
    node = Node.new(data)
    @head = node
  end

end

