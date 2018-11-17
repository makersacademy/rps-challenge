require 'player'

describe Player do

  subject(:player_1) { described_class.new('Player 1') }

  it "stores a player's name" do
    expect(player_1.name).to eq 'Player 1'
  end

  describe '#move' do
    it "stores a player's move" do
      player_1.move('Rock')
      expect(player_1.moves).to eq 'Rock'
    end
  end

  describe '#random_move' do
    it "randomly selects a move" do
      options = ["Rock", "Paper", "Scissors"]
      player_1.random_move
      expect(options).to include(player_1.moves)
    end
  end

end
