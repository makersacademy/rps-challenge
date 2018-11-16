require 'player'

describe Player do

  subject(:player_1) { described_class.new('Player 1') }

  it "stores a player's name" do
    expect(player_1.name).to eq 'Player 1'
  end

end
