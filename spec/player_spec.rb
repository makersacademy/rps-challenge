require 'player'

describe Player do
  subject(:player) { described_class.new('Rudolph') }

  it 'stores a players name' do
    expect(player.name).to eq 'Rudolph'
  end

  describe '#choose' do
    it 'remembers what weapon the player has chosen to play' do
      player.choose(:rock)
      expect(player.weapon).to eq (:rock)
    end
  end
end
