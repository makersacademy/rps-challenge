require 'player'

describe Player do

  subject(:player) { described_class.new('Oliver') }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq 'Oliver'
    end
  end

  describe '#self.create' do
    it 'creates a new instance of self' do
      expect(Player.create('Oliver')).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of the class' do
      player = Player.create('Oliver')
      expect(Player.instance).to eq player
    end
  end

end
