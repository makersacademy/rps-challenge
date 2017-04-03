require 'player'

describe Player do
  subject(:player) { described_class.new("Connie") }

  describe "initialize" do
  it "initialized with choice instance variable set to default choice" do
    expect(player.choice).to eq Player::DEFAULT_CHOICE
    end

    it "initialized with name instance variable" do
      expect(player.name).to eq "Connie"
    end
  end

  describe "#choose_rock" do
    it "changes instance variable choice to rock" do
      player.choose_rock
      expect(player.choice).to eq "rock"
    end
  end

  describe "#choose_paper" do
    it "changes instance variable choice to paper" do
      player.choose_paper
      expect(player.choice).to eq "paper"
    end
  end

  describe "#choose_scissors" do
    it "changes instance variable choice to scissors" do
      player.choose_scissors
      expect(player.choice).to eq "scissors"
    end
  end
end
