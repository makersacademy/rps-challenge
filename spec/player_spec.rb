require 'player'

describe Player do

  subject(:player) { described_class.new("Chris") }

  describe '#name' do
    it 'has a name' do
      expect(player.name).to eq 'Chris'
    end
  end

  describe '#self.create' do
    it 'created a new instance of self' do
      expect(Player.create("Chris")).to be_an_instance_of described_class
    end
  end

  describe '#self.instance' do
    it 'allows us to access an instance of Player' do
      new_player = Player.create("Chris")
      expect(Player.instance).to eq new_player
    end
  end

end
