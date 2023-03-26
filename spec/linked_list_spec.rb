require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  xit "appened" do
    list = LinkedList.new
    
    expect(list.head).to eq(nil)
    
    list.append("boop")
    
    expect(list.head.data).to eq("boop")
    
    expect(list.head.next_node).to eq(nil)
    
  end

  xit "count" do
    list = LinkedList.new
    list.append("boop")

    expect(list.count).to eq(1)
    
  end

  it "to_string" do
    list = LinkedList.new
    list.append("boop")
    list.append("boop")
    expect(list.to_string).to eq("boop boop")
  end

  it "multiple data" do
    list = LinkedList.new
    list.append("boop")
    expect(list.head.data). to eq("boop")
    list.append("beep")
    expect(list.count).to eq(2)
    
    expect(list.to_string).to eq("boop beep")
    
  end

  it "insert and prepend" do
    list = LinkedList.new
    list.append("boop")
    list.append("beep")
    list.prepend("bop")
    expect(list.to_string).to eq("bop boop beep")
    list.insert(1, "woo")
    expect(list.count).to eq(4)
    # list.find(2, 1)
    expect(list.includes?("beep")).to be(true)
  end
  
  
end
