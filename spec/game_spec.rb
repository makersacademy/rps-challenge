require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe 'player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe 'computer' do
    it 'retrieves a computer player' do
      expect(game.computer).to eq computer
    end
  end

end
