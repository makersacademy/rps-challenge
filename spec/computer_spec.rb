
require 'computer.rb'

describe Computer do
  subject(:computer) { described_class.new }

  describe "#computer" do
    it "returns a random option for the computer's turn" do
      expect([:rock, :paper, :scissors]).to include computer.option
    end
  end
end
