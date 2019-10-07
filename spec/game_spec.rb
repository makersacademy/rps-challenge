require "game"

describe Game do

  let(:subject) { Game.new }

  describe "#rock" do
    it "should return the equality" do
      expect(subject.rock("Rock")).to eq("Oups, it's a draw!")
    end

    it "should return the winner" do
      expect(subject.rock("Scissors")).to eq("Great, you won this round!")
    end

    it "should return the looser" do
      expect(subject.rock("Paper")).to eq("Sadly, you lost this one!")
    end
  end

  describe "#scissors" do
    it "should return the equality" do
      expect(subject.scissors("Scissors")).to eq("Oups, it's a draw!")
    end

    it "should return the winner" do
      expect(subject.scissors("Paper")).to eq("Great, you won this round!")
    end

    it "should return the looser" do
      expect(subject.scissors("Rock")).to eq("Sadly, you lost this one!")
    end
  end

  describe "#paper" do
    it "should return the equality" do
      expect(subject.paper("Paper")).to eq("Oups, it's a draw!")
    end

    it "should return the winner" do
      expect(subject.paper("Rock")).to eq("Great, you won this round!")
    end

    it "should return the looser" do
      expect(subject.paper("Scissors")).to eq("Sadly, you lost this one!")
    end
  end

end
