require 'rspec'
require './lib/node'
require './lib/linked_list'

RSpec.describe LinkedList do

  it "appened" do
    list = LinkedList.new
    
    expect(list.head). to eq(nil)

  end
end