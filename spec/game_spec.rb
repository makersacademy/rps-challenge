require 'game'

describe Game do

  subject(:game) { described_class }

  let(:computer) { double :computer }

  context "when computer is #rock it:" do

    before { allow(computer).to receive(:weapon) { :rock } }

    it "wins when player is #scissors" do
      expect(game.play(computer.weapon, :scissors)).to eq :lose
    end

    it "draws when player is #rock" do
      expect(game.play(computer.weapon, :rock)).to eq :draw
    end

    it "loses when player is #paper" do
      expect(game.play(computer.weapon, :paper)).to eq :win
    end
  end

  context "when computer is #paper it:" do

    before { allow(computer).to receive(:weapon) { :paper } }

    it "loses when player is #scissors" do
      expect(game.play(computer.weapon, :scissors)).to eq :win
    end

    it "wins when player is #rock" do
      expect(game.play(computer.weapon, :rock)).to eq :lose
    end

    it "draws when player is #paper" do
      expect(game.play(computer.weapon, :paper)).to eq :draw
    end
  end

  context "when computer is #scissors it:" do

    before { allow(computer).to receive(:weapon) { :scissors } }

    it "draws when player is #scissors" do
      expect(game.play(computer.weapon, :scissors)).to eq :draw
    end

    it "loses when player is #rock" do
      expect(game.play(computer.weapon, :rock)).to eq :win
    end

    it "wins when player is #paper" do
      expect(game.play(computer.weapon, :paper)).to eq :lose
    end
  end
end
