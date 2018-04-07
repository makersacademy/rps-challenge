require 'player'

describe Player do
  subject(:player) { described_class.new('Joe') }

  it "has a name" do
    expect(player.name).to eq 'Joe'
  end

end
