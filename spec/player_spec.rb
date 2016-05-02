require 'player'

describe Player do

  subject(:player) {described_class.new("sity")}

  describe '#name' do
    it 'is created with a name' do
      expect(player.name).to eq "sity"
    end
  end

  describe '#choose_weapon' do
    it 'chooses a weapon' do
      player.choose_weapon(:rock)
      expect(player.weapon).to eq :rock
    end
  end

end
