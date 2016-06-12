require "player"

describe Player do
  subject { described_class.new("Van") }

  describe "#make_choice" do
    it "should raise an error if the choice is neither rock, paper nor scissors" do
      expect do
        subject.make_choice("shoe")
      end.to raise_error("Invalid weapon!")
    end
  end
end
