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

  describe  "#random_choice" do
    it 'sets the choice from rock, paper or scissors' do
      # allow(player).to receive(:random_choice).and_return('scissors')
      player.random_choice
      # expect(player.opponent_choice).to eq('scissors')
      expect(["rock", "paper", "scissors"]).to include(player.opponent_choice)
    end 
  end 
end 