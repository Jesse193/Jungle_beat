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



  

end

