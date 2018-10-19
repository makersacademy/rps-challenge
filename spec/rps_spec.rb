require './lib/rps.rb'

describe Rps do
  subject(:play_rock) {described_class.new("Rock")}
  subject(:play_paper) {described_class.new("Paper")}
  subject(:play_scissors) {described_class.new("Scissors")}
  let(:comp_rock) {double(:Rps, :chance => 1)}
  let(:comp_paper) {double(:Rps, :chance => 2)}
  let(:comp_scissors) {double(:Rps, :chance => 3)}
  describe "#computer" do
    it "computer selects Rock" do
      expect(play_rock.computer(comp_rock.chance)).to eq ["R"]
    end

    it "computer selects Paper" do
      expect(play_rock.computer(comp_paper.chance)).to eq ["P"]
    end

    it "computer selects Scissors" do
      expect(play_rock.computer(comp_scissors.chance)).to eq ["S"]
    end
  end

  describe "#user" do
    it "player selects Rock" do
      expect(play_rock.user).to eq ["R"]
    end

    it "player selects Paper" do
      expect(play_paper.user).to eq ["P"]
    end

    it "player selects Scissors" do
      expect(play_scissors.user).to eq ["S"]
    end
  end

  describe "#decide" do
    it "announces a tie when both choose rock" do
      play_rock.computer(comp_rock.chance)
      play_rock.user
      expect(play_rock.decide).to eq :tie
    end
    it "announces a tie when both choose paper" do
      play_paper.computer(comp_paper.chance)
      play_paper.user
      expect(play_paper.decide).to eq :tie
    end
    it "announces a tie when both choose scissors" do
      play_scissors.computer(comp_scissors.chance)
      play_scissors.user
      expect(play_scissors.decide).to eq :tie
    end
    it "announces a loss when the computer wins" do
      play_rock.computer(comp_paper.chance)
      play_rock.user
      expect(play_rock.decide).to eq :lose
    end
    it "announces a loss when the computer wins" do
      play_paper.computer(comp_scissors.chance)
      play_paper.user
      expect(play_paper.decide).to eq :lose
    end
    it "announces a loss when the computer wins" do
      play_scissors.computer(comp_rock.chance)
      play_scissors.user
      expect(play_scissors.decide).to eq :lose
    end
  end
end
