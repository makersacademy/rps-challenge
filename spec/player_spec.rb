require 'player'

RSpec.describe Player do
  subject(:zoe) { Player.new('Zoe') }

  describe '#name' do
    it 'returns the name' do
      expect(zoe.name).to eq 'Zoe'
    end
  end

  describe '#weapon_choice' do
    it 'returns the chosen weapon' do
      expect(zoe.weapon_choice('Rock')). to eq :Rock
    end
  end
end
