require 'rspec'
require './lib/node'


RSpec.describe Node do

  it "basic functions" do
    node = Node.new("head")
    expect(node.data). to eq("blob")
    expect(node.next_node). to eq(nil)

  end

end