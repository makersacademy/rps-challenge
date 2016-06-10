require "player"

describe Player do
  subject { described_class.new("Van") }
  describe "#name" do
    it "should know its own name" do
      expect(subject.name).to eq("Van")
    end
  end
end
