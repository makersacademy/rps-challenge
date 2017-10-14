require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#choose" do
    it "returns either Rock, Paper or Scissors" do
      expect(Computer::WEAPONS).to include subject.choose
    end
  end
end
