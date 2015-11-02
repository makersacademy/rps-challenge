require './lib/game'

describe Game do
  subject(:game) { described_class }

  it "player wins when player is #rock" do
    expect(game.play(:rock, :scissors)).to eq :win
  end

end
