require './model/game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#outcome' do
    it 'gives the result of draw' do
      expect(game.outcome("Scissor", "Scissor")).to eq "It's a Draw"
    end
    it 'gives the result of Player 1 win' do
      expect(game.outcome("Scissor", "Paper")).to eq "Player 1 won"
    end
    it 'gives the result of Player 2 won' do
      expect(game.outcome("Scissor", "Rock")).to eq "Player 2 won"
    end
  end
end
