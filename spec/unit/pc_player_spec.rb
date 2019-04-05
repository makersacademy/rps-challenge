require "pc_player.rb"

describe PcPlayer do
  describe "set_play" do
    it "gives rock back" do
      srand(67_810)
      expect{subject.set_play}.to change{subject.play}.to("rock")
    end

    it "gives paper back" do
      srand(67_808)
      expect{subject.set_play}.to change{subject.play}.to("paper")
    end

    it "gives scissors back" do
      srand(67_809)
      expect{subject.set_play}.to change{subject.play}.to("scissors")
    end
  end
end
