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
      expect(player.weapon_choice(weapon)).to eq weapon
    end
  end

end
