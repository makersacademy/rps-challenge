require 'player'

describe Player do

  subject(:player) { described_class.new("Mary") }

  describe '#initialize' do
    it 'is initialized with a name' do
      expect(player.name).to eq "Mary"
    end
  end

  describe '#weapon' do
    it "raises an error if the weapon doesn't exist" do
      expect { player.weapon = "Sword" }.to raise_error("This weapon is not valid")
    end

    it "assigns the weapon if value is valid" do
      player.weapon = "Scissors"
      expect(player.weapon).to eq(:scissors)
    end
  end
end
