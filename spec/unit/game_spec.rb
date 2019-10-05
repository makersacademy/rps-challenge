require 'game'

describe Game do

  let(:player_1) { double :player, :choice => "Rock" }
  let(:player_2) { double :player, :choice => "Scissors" }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#winner' do
    it 'returns true if player wins' do
      expect(game.winner).to eq 'WINNER'
    end
  end

end
