require 'player'

describe Player do

  let(:player)   { Player.new("Mario") }
  let(:rock)     { double :rock, name: "rock"}
  let(:scissors) { double :scissors, name: "scissors"}

    it "should have a name" do
      expect(player.name).to eq("Mario")
    end

    it "should be able to select an element" do
      rock = double :rock, name: "rock"
      player.select_element(rock)
      expect(player.element_selected).to eq("rock")
    end

    it "should be able to win" do
      allow(rock).to receive(:beat).with(scissors)
      allow(rock).to receive(:win).and_return(true)
      expect(player.score_win(rock)).to eq(true)
    end
end