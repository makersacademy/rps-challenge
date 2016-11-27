require 'game'

describe Game do
  subject(:game) {described_class.new(player,machine)}
  let(:player) {double :player}
  let(:machine) {double :machine}

  describe "#win?" do
    before do
      allow(player).to receive(:weapon).and_return(:rock)
    end

    it "should return true" do
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.win?).to be true
    end

    it "should return false" do
      allow(machine).to receive(:weapon).and_return(:rock)
      expect(game.win?).to be false
    end

  end
  describe "#draw?" do
    before do
      allow(player).to receive(:weapon).and_return(:scissors)
    end

    it "returns true if player and machine have the same weapon" do
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.draw?).to be true
    end

    it "returns false if player and machine have different weapon" do
      allow(machine).to receive(:weapon).and_return(:paper)
      expect(game.draw?).to be false
    end
  end

  

end
