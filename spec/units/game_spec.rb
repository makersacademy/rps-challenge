require 'game'

describe Game do

  let(:player_1) { double 'player_1', name: "Josie" }
  let(:player_2) { double 'player_2', name: "Computer" }
  subject(:game) { described_class.new player_1, player_2 }

  context 'Game initializes with:' do
    it 'a player_1' do
      expect(game.player_1.name).to eq "Josie"
    end
    it 'a player_2' do
      expect(game.player_2.name).to eq "Computer"
    end
  end

  describe '.result' do
    it 'Player 1 wins if they play rock and computer plays scissors' do
      allow(player_1).to receive(:move).and_return 'rock'
      allow(player_2).to receive(:move).and_return 'scissors'
      allow(game).to receive(:update_scores)
      game.calculate_result
      expect(game.result).to eq player_1
  end

    it 'Player 1 loses if they play paper and computer plays scissors' do
      allow(player_1).to receive(:move).and_return 'paper'
      allow(player_2).to receive(:move).and_return 'scissors'
      allow(game).to receive(:update_scores)
      game.calculate_result
      expect(game.result).to eq player_2
    end

    it 'Players draw if both play scissors' do
      allow(player_1).to receive(:move).and_return 'scissors'
      allow(player_2).to receive(:move).and_return 'scissors'
      game.calculate_result
      expect(game.result).to eq 'draw'
    end
  end

end
