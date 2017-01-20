require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { instance_double("Player") }
  let(:computer) { instance_double("Computer") }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'retrieves the computer' do
      expect(game.computer).to eq computer
    end
  end
end
