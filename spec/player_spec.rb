require 'player'

describe Player do
  subject(:player) { described_class.new('Cleopatra') }

  describe '#name' do
    it 'returns the user name' do
      expect(player.name).to eq 'Cleopatra'
    end
  end

  describe '#weapon' do
    it 'initializes player with an nil weapon variable' do
      expect(player.weapon).to eq nil
    end
  end
end
