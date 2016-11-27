require 'game'

describe Game do
  subject(:game) {described_class.new(player,machine)}
  let(:player) {double :player}
  let(:machine) {double :machine}

  describe "#Win?" do
    before do
      allow(player).to receive(:weapon).and_return(:rock)
    end

    it "should return true" do
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.win?).to be true
    end

    it "should return false" do
      allow(machine).to receive(:weapon).and_return(:rock)
      g = Game.new(player,machine)
      expect(g.win?).to be false
    end

  end

end
