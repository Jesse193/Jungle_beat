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
end