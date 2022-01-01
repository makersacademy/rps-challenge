require "game"

describe Game do
  let(:human) { double("human", set_hand: "", hand: "", add_points: 1, points: 1) }
  let(:computer) { double("computer", set_hand: "", hand: "", add_points: 1, points: 1) }
  subject { described_class.new(human, computer) }

  context "has attributes" do
    it "human" do
      expect(subject).to have_attributes(human: human)
    end
    it "computer" do
      expect(subject).to have_attributes(computer: computer)
    end
    it "finish" do
      expect(subject).to have_attributes(finish: false)
    end
    it "round_status" do
      expect(subject).to have_attributes(round_status: "")
    end
  end

  context "method responds to" do
    it "#start" do
      expect(subject).to respond_to(:start)
    end
  end

  context "method functionality" do
    it "#start delegates to Computer.set_hand" do
      expect(computer).to receive(:set_hand).once
      subject.start
    end
    it "#start delegates to #result" do
      expect(subject).to receive(:result).once
      subject.start
    end
    it "round ends in draw" do
      allow(human).to receive(:hand).and_return("scissors")
      allow(computer).to receive(:hand).and_return("scissors")
      subject.start
      expect(subject.round_status).to eq("drew")
    end
    it "round ends in win" do
      allow(human).to receive(:hand).and_return("rock")
      allow(computer).to receive(:hand).and_return("scissors")
      subject.start
      expect(subject.round_status).to eq("won")
    end
    it "round ends in loss" do
      allow(human).to receive(:hand).and_return("paper")
      allow(computer).to receive(:hand).and_return("scissors")
      subject.start
      expect(subject.round_status).to eq("lost")
    end
    it "#check_finish triggers finish when 2 points is reached by either computer or human" do
      allow(human).to receive(:hand).and_return("paper")
      allow(computer).to receive(:hand).and_return("rock")
      allow(human).to receive(:points).and_return(2)
      allow(computer).to receive(:points).and_return(1)
      subject.start
      expect(subject.finish).to eq(true)
    end
    it "#who_won? sends winning end message" do
      allow(human).to receive(:hand).and_return("paper")
      allow(computer).to receive(:hand).and_return("rock")
      allow(human).to receive(:points).and_return(2)
      allow(computer).to receive(:points).and_return(1)
      subject.start
      expect(subject.round_status).to eq("You won!! Yay!!")
    end
    it "#who_won? sends losing end message" do
      allow(human).to receive(:hand).and_return("rock")
      allow(computer).to receive(:hand).and_return("paper")
      allow(human).to receive(:points).and_return(1)
      allow(computer).to receive(:points).and_return(2)
      subject.start
      expect(subject.round_status).to eq("Bad luck! better luck next time")
    end
  end
end
