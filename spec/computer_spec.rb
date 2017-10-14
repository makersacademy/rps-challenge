require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe "#choose" do
    it "returns either Rock, Paper or Scissors" do
      expect(["Rock","Paper","Scissors"]).to include subject.choose
    end
  end
end
