require "computer"

describe Computer do

  subject(:computer) { described_class.new }

  describe "#Computer choice" do
    it "returns random computer choice" do
      expect(["Rock", "Paper", "Scissors"]).to include(subject.computer_choice)
    end
  end

end
