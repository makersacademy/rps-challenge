require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  describe '#first_player' do
    it 'retrieves the first player' do
      expect(game.first_player).to eq player_1
    end
  end

  describe '#second_player' do
    it 'retrieves the second player' do
      expect(game.second_player).to eq player_2
    end
  end

end
