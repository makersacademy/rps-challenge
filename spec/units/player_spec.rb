require 'player'

describe Player do
subject(:player) { described_class.new("Hulk") }

  describe "#initialize" do 
    it 'returns a name' do
      expect(player.name).to eq("Hulk")
    end
  end

  describe "#choose" do
    it 'sets the choice to rock' do
      player.choose("rock")
      expect(player.choice).to eq("rock")
    end
  end
end 