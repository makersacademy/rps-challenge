require 'player'

describe Player do

  subject(:player_1) {Player.new('Jimmy')}

  it "returns the name of the player 1" do
    expect(player_1.name).to eq('Jimmy')
  end

end
