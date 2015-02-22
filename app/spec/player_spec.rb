require 'player'

describe Player do

  let(:player)   { Player.new("Mario")                                  }
  let(:rock)     { double :element, name: "rock", loses_to: "paper"        }
  let(:scissors) { double :element, name: "scissors", loses_to: "rock" }

    it "should have a name" do
      expect(player.name).to eq("Mario")
    end

    it "should be able to select an element" do
      player.select_element(rock)
      expect(player.element_selected).to eq(rock)
    end

    it "should be able to win" do
      player.select_element(rock)
      allow(rock).to receive(:confront).with(scissors)
      allow(rock).to receive(:win).and_return(true)
      expect(player.win?).to eq(true)
    end
end