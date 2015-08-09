require 'game'

describe Game do

  # let(:player_1){ double(:player, :gesture => :rock)}
  subject { Game.new(:player_1, :player_2) }

  it "should have two players" do
    player_1 = double(:player)
    player_2 = double(:player)
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:gesture) { :rock }
    expect(game.players).to eq [player_1, player_2]
  end

  it "should have a winner" do
    player_1 = double(:player)
    player_2 = double(:player)
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:gesture) { :rock }
    allow(player_2).to receive(:gesture) { :paper }
    allow(player_1).to receive(:name) { "Joe" }
    allow(player_2).to receive(:name) { "Jill" }
    expect(game.reveal_winner).to eq "Jill is the winner!"
  end

  it "should raise error if both parties have not thrown gesture" do
    player_1 = double(:player)
    player_2 = double(:player)
    game = Game.new(player_1, player_2)
    allow(player_1).to receive(:gesture) { :rock }
    allow(player_2).to receive(:gesture) { :nil }
    expect { game.reveal_winner }.to raise_error "Both players need to throw gesture"
  end

end