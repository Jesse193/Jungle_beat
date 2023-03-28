class JungleBeat
  attr_reader :list, :head, :LinkedList, :append, :Node, :data
  def initialize
    @list = LinkedList.new
    @head = head
    @counter = 0
    @data = data
  end
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
  count
end 
def count
  @counter
end

  