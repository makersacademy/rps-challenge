require 'opponent'

describe Opponent do

  subject(:opponent) { described_class.new }

  describe "#option" do
    it "returns a random option" do
      expect(Opponent::OPTIONS).to include opponent.option
    end
  end
end
