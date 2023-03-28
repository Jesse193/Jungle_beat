class JungleBeat
  attr_reader :list, :append
  def initialize(data = " ")
    @list = LinkedList.new
    @counter = 0
  end


  def append(data)
    beats = data.split
    beats.each do |beat|
      @list.append(beat)
      @counter += 1
    end
      return data
  end 

  def count
    @counter
  end

  def play
    beats = @list.to_string
    `say -r 100 #{beats}`
  end
end

  