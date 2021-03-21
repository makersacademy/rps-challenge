require 'game'

describe Game do
  let(:rock_player) { instance_double(Player, move: 'rock') }
  let(:paper_player) { instance_double(Player, move: 'paper') }
  let(:scissors_player) { instance_double(Player, move: 'scissors') }

  describe '#initialize' do
    it 'takes players as arguments and saves them as instance variables' do
      game = described_class.new(rock_player, paper_player)
      expect(game.player1).to eq(rock_player) 
    end
  end
end
