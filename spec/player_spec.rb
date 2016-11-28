require 'player'

describe Player do

  subject(:player) { described_class.new(name) }
  let(:name) { double :name }

  it "should take the player's name" do
    expect(player.name).to eq name
  end
  it "should initialize with a blank choice" do
    expect(player.choice).to eq nil
  end

  describe "#rock" do
    it "should change player_choice to Rock" do
      player.rock
      expect(player.choice).to eq "Rock"
    end
  end

  describe "#paper" do
    it "should change player_choice to Paper" do
      player.paper
      expect(player.choice).to eq "Paper"
    end
  end

  describe "#scissors" do
    it "should change player_choice to Scissors" do
      player.scissors
      expect(player.choice).to eq "Scissors"
    end
  end

end
