require 'game'

describe Game do
  let(:player) {double :player}
  subject(:game) {described_class.new(player)}

  describe "#initialize" do
    it "is initialize with an array of choices" do
      expect(game.choice).to include("Rock")
    end
  end
end
