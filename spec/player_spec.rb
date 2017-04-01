require 'player'

describe Player do
  subject(:elaine) { described_class.new(:elaine)}

  describe '#initialization' do
    it 'should return the players name' do
      expect(elaine.name).to eq :elaine
    end
  end

  describe '#self.instance' do
    it 'returns an instance of player' do
      Player.create(:elaine)
      expect(Player.instance).to be_instance_of Player
    end
  end
end
