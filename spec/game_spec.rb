require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player, weapon_choice: :scissors }
  let(:computer) { double :computer }

  describe '#player_1' do
    it 'should return the player' do
      expect(game.player_1).to eq player
    end
  end

  describe '#player_2' do
    it 'should return the computer' do
      expect(game.player_2).to eq computer
    end
  end

  describe '#victor' do
    it 'should return :draw if both choose same weapon' do
      allow(computer).to receive(:weapon_choice).and_return(:scissors)
      expect(game.victor).to eq :draw
    end
  end
end
