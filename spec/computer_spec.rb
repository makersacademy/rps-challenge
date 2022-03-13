require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  describe "#move" do
    it "generates a random move" do
      allow_any_instance_of(Array).to receive(:sample).and_return("Paper")
      expect(computer.move).to eq("Paper")
    end
  end
end