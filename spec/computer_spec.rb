require "computer"

describe Computer do
  subject(:computer) {Computer.new}
  describe "#initialize" do
    it "has not made a choice yet" do
      expect(computer.choice).to eq nil
    end
  end
end
