require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe "#weapon" do
    it "randomly chooses a weapon" do
      expect([:rock, :paper, :scissors]).to include(computer.weapon)
    end
  end
end
