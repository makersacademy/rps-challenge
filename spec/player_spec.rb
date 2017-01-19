require "player"
describe Player do

  subject(:player) {described_class.new("John")}
  let(:weapons) {[:rock, :paper, :scissors]}

  describe "Player attributes" do
    it "Player should have a name" do
      expect(player.name).to eq "John"
    end

    it "should start with a score of 0pts" do
      expect(player.score).to eq 0
    end

  end

  describe "Choosing rock, paper or scissors" do
    it "choose rock should set weapon to rock" do
      player.choose_rock
      expect(player.weapon).to eq :rock
    end

    it "choose papper should set weapon to paper" do
      player.choose_paper
      expect(player.weapon).to eq :paper
    end

    it "choose scissors should set weapon to scissors" do
      player.choose_scissors
      expect(player.weapon).to eq :scissors
    end
  end


end
