require 'player'

describe Player do
  subject(:player) { described_class.new('Abigail') }
  let(:weapon) { double :weapon }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Abigail'
    end
  end

  describe '#weapon' do
    it 'returns the name of the chosen weapon' do
      player.weapon_choice(:rock)
      expect(player.weapon).to eq :rock
    end
  end
end
