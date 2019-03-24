require './models/game.rb'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, name: "Player 1" }
  let(:player_2) { double :player, name: "Player 2" }

  describe '#game_over' do

    it 'decides the outcome of the game - player 1 wins' do
      expect(game.game_over("Scissors", "Paper")).to eq "Player 1 wins"
    end

    it 'decides the outcome of the game - player 2 wins' do
      expect(game.game_over("Rock", "Paper")).to eq "Player 2 wins"
    end

    it 'decides the outcome of the game - draw' do
      expect(game.game_over("Scissors", "Scissor")).to eq "It's a draw"
    end

  end
  

end
