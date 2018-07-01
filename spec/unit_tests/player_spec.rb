require './lib/player'

describe Player do
  describe '$create' do
    it 'returns a new instance of the player class' do
      expect(Player.create('Bob)')).to be_a Player
    end
  end

  describe '$name' do
    it "returns the player's name" do
      Player.create('Bob')
      expect(Player.name).to eq('Bob')
    end
  end

  describe '$pick' do
    it "returns the player's pick" do
      Player.create('Bob')
      Player.pick = :rock
      expect(Player.pick).to eq(:rock)
    end
  end
end
