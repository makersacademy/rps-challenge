require 'opponent'

describe Opponent do

  subject(:opponent) { described_class.new}

  describe "#option" do
    it "Returns a random option" do
      expect(Game::OPTIONS).to include opponent.option
    end
  end
end
