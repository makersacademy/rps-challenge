require "game"

describe Game do
  let(:human) { double("human", set_hand: "") }
  let(:computer) { double("computer", set_hand: "") }
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
    it "#start delegates to Player.set_hand" do
      expect(human).to receive(:set_hand).once
      subject.start
    end
    it "#start delegates to Computer.set_hand" do
      expect(computer).to receive(:set_hand).once
      subject.start
    end
    it "#start delegates to #result" do
      expect(subject).to receive(:result).once
      subject.start
    end
  end
end
