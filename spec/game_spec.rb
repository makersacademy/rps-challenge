require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#winner' do
    it 'Checks the winning player' do
      expect(game.winner).to eq "Win"
    end
  end

  describe '#result' do
    it 'Checks the result of the winning player' do
      game.winner
      expect(game.result).to eq "Win"
    end
  end


end
