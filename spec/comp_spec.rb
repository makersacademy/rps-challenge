require 'comp'

describe Comp do
  subject(:comp) {described_class.new}

  describe "When called, this class should" do
    it "initialize with a random number between 1 and 3" do
      comp = Comp.new
      expect(comp.comp_choice).to be < 5
    end
  end
end
