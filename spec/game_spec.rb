require 'game'

describe Game do

  let(:game) { described_class.new(player1,player2) }
  let(:player1) { double("Winner", :move => "Scissors") }
  let(:player2) { double("Loser", :move => "Paper") }

  context "#initialize"

  it "should be initialized with player1" do
    expect(game.player1).to eq player1
  end

  it "should be initialized with player2" do
    expect(game.player2).to eq player2
  end

end
