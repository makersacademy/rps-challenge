describe Ai do

  describe "#choice" do
    it "returns a random choice" do
      expect(["rock", "paper", "scissors"]).to include(subject.choice)
    end
  end
end
