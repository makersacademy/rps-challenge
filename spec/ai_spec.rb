require 'ai'

describe AI do

  subject(:ai) {  described_class.new }
  context "#move" do
    it "generates a move randomly" do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(ai.move).to eq :scissors
    end
  end
end
