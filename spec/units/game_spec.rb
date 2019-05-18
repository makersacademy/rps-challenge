require 'game'

describe Game do
  let(:player) { double :player }
  let(:computer) { double :computer }
  let(:subject) { Game.new(player, computer) }

  describe '#player' do
    it 'returns player' do
      expect(subject.player).to eq(player)
    end
  end

  describe '#computer' do
    it 'returns computer' do
      expect(subject.computer).to eq(computer)
    end
  end
end
