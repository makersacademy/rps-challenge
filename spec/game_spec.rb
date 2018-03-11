require 'game'
describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player_1' do
    it 'makes a first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'makes a second player' do
      expect(game.player_2).to eq player_2
    end
  end        	
end
