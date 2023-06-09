require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'
require 'rspec'

RSpec.describe JungleBeat do
  it "beats" do
    jb = JungleBeat.new
    expect(jb.list.head).to eq(nil)
    jb.append("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    jb.append("woo hoo shu")
    expect(jb.count).to eq(6)
  end
  it "plays" do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    jb.play
  end
end