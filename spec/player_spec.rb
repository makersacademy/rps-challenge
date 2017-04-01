require 'player'

describe Player do
  subject(:player) { described_class.new }

  describe "initialize" do
  it "initialized with rock instance variable set to false" do
    expect(player.rock).to eq false
    end

  it "initialized with paper instance variable set to false" do
    expect(player.paper).to eq false
    end

  it "initialized with scissors instance variable set to false" do
    expect(player.scissors).to eq false
    end
  end

  describe "#rock" do
    it "rock changes to true when called" do
      player.choose_rock
      expect(player.rock).to eq true
    end
  end

  describe "#paper" do
    it "paper changes to true when called" do
      player.choose_paper
      expect(player.paper).to eq true
    end
  end

  describe "#scissors" do
    it "scissors changes to true when called" do
      player.choose_scissors
      expect(player.scissors).to eq true
    end
  end
end
