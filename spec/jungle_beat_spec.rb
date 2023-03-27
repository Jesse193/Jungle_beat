require './lib/jungle_beat'
require './lib/linked_list'
require './lib/node'
require 'rspec'

RSpec.describe JungleBeat do
  it "beats" do
    jb = JungleBeat.new
    expect(jb.list.head).to eq(nil)
    jb.append("deep doo ditt")
    # require 'pry'; binding.pry
  end

end