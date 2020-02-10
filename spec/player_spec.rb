require 'player'

describe Player do
  let(:subject) { described_class.new("Haydon")}
  describe "#name" do
    it "should return the initialized class name" do
      expect(subject.name).to eq("Haydon")
    end
  end
  describe "#store_move" do
    it "should take a move and assign it to the instance variable" do
      subject.store_move("Rock")
      expect(subject.move).to eq "Rock"
    end
  end
end