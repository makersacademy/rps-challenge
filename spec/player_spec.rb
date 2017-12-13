require "player"

describe Player do
  subject(:player) { described_class.new("Antonio") }

  describe "#intiialize" do
    it "ensures a player is initialized with a name" do
      expect(subject.name).to eq("Antonio")
    end
    it "ensures a player is initialized with a choice" do
      expect(subject.choice).to eq(nil)
    end
    it "ensures a player is initialized with a number of wins" do
      expect(subject.win_count).to eq(0)
    end
  end

  describe "#add_choice" do
    it "updates the @choice with the value passed as argument" do
      subject.add_choice("rock")
      expect(subject.choice).to eq(:rock)
    end
    it "returns @choice" do
      expect(subject.add_choice("rock")).to eq(:rock)
    end
  end

  describe "#update_score" do
    it "increases the wins count by 1" do
      expect { subject.increase_wins }.to change { subject.win_count }.by(1)
    end
  end

  describe "#reset_choice" do
    it "ensures @choice is nil after running it" do
      subject.add_choice("test")
      subject.reset_choice
      expect(subject.choice).to eq nil
    end
  end
end
