require "computer"

describe Computer do
  subject(:computer) { described_class.new }

  describe "#choice" do
    it "returns computers random choice" do
      expect([:rock, :paper, :scissors]).to include computer.choice
    end
  end
end
