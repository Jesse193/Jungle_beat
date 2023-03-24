require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  it "appened" do
    list = LinkedList.new
    
    expect(list.head). to eq(nil)
    
    list.append("boop")
    
    expect(list.head.data). to eq("boop")
    
    expect(list.head.next_node). to eq(nil)
    
  end

  it "count" do
    list = LinkedList.new
    list.append("boop")

    expect(list.count). to eq(1)
    
  end

  it "to_string" do
    list = LinkedList.new
    list.append("boop")
    expect(list.to_string). to eq("boop")
  end

  it "multiple data" do
    list = LinkedList.new
    list.append("boop")
    expect(list.head.data). to eq("boop")
    list.append("beep")

    expect(list.next_node.data). to eq("beep")

    expect(list.count). to eq(2)
    expect(list.to_string). to eq("boop beep")
  end

  
end