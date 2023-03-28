require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  it "appened" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    list.append("boop")
    expect(list.head.data).to eq("boop")
    expect(list.head.next_node).to eq(nil)
  end

  it "count" do
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
  end

  it "find" do
    list = LinkedList.new
    list.append("bop")
    list.append("boop")
    list.append("beep")
    list.insert(1, "woo") # bop woo boop beep
    expect(list.find(2, 1)).to eq("boop")
    expect(list.find(1, 3)).to eq("woo boop beep")
  end

  it "includes?" do
    list = LinkedList.new
    list.append("boop")
    list.append("beep")
    list.prepend("bop")
    list.insert(1, "woo")
    expect(list.includes?("beep")).to be(true)
    expect(list.includes?("hello")).to be(false)
  end

  it "pop" do
    list = LinkedList.new
    list.append("boop")
    list.append("beep")
    list.prepend("bop")
    list.insert(1, "woo")
    expect(list.count). to eq(4)
    list.pop
    expect(list.count). to eq(3)
    # expect(list.pop).to eq("beep")
    expect(list.to_string).to eq("bop woo boop")
  end
  
  
end
