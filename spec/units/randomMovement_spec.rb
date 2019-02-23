require "randomMovement"
describe RandomMovement do
  describe "#random_movement" do
    let(:subject){described_class.new()}
    it "Sends out a random movement" do
      srand(1000)
      expect(subject.random_movement).to eq "scissors"
    end
  end
end
