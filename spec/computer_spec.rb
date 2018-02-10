require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe "#weapon" do
    it "randomly chooses a weapon" do
      allow(computer).to receive(:weapon) { "Paper" }
      expect(computer.weapon).to eq "Paper"
    end
  end
end
