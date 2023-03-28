class LinkedList
  attr_reader :name, :data, :list, :node, :head, :tail
  def initialize
    @head = nil
    @tail = nil
    @counter = 0
    
  end

  def append(data)
    current_node = head
    if @head == nil
      @head = Node.new(data)
    else
      while current_node.next_node != nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
    @counter += 1
  end

  def count
    @counter
  end
  
  def to_string
    current_node = head
    string = ""
    while current_node != nil
      string << current_node.data
      string << " "
      current_node = current_node.next_node
    end
    string.strip
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

  def find(pos, num)
    string = ""
    current_node = head
    counter = 0
    num_counter = 0
    while counter != pos && num_counter != num
      current_node = current_node.next_node
      counter += 1
      string << current_node.data
      string << " "
      num_counter += 1
    end
    while counter == pos && num_counter != num
      num_counter += 1
      current_node = current_node.next_node
      string << current_node.data
      string << " "
    end
    string.strip
  end
  
  def includes?(data)
    to_string.include?(data)
  end

  def pop
    @counter -= 1
    current_node = head
    while current_node != nil
      current_node = current_node.next_node
      next_node = current_node.next_node
      next_node.next_node = nil
      break
    end
  end
end

