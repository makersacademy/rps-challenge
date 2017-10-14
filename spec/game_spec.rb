require 'game'

describe Game do

subject(:game) { described_class.new("Lady Macbeth")}

  describe "#play" do
    it "returns win" do
      expect(game.play).to eq "Win"
    end
  end
end
