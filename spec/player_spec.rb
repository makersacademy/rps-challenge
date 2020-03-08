require 'player.rb'

describe Player do
subject(:player) { described_class.new("Will") }

  it "initializes with a name" do
    expect(player.name).to eq("Will")
  end

end
