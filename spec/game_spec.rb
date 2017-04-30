require 'game'

describe Game do
  let(:player1) { Player.new(:Unai) }
  let(:player2) { Computer.new(:Computer) }
  let(:game) { described_class.new(player1, player2) }
  describe '#rock' do
    it 'chooses rock for player 1' do
      srand(1)
      game.rock
      expect(player1.hand).to eq 1
    end
  end
  describe '#paper' do
    it 'chooses paper for player 1' do
      srand(1)
      game.paper
      expect(player1.hand).to eq 2
    end
  end
  describe 'scissors' do
    it 'chooses scissors for player 1' do
      srand(1)
      game.scissors
      expect(player1.hand).to eq 3
    end
  end
  describe '#random_move' do
    it 'chooses a random value for computer and computer wins' do
      srand(1)
      game.bot_move
      expect(player2.hand).to eq 2
    end
  end
end
