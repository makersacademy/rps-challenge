require "game"

describe Game do
  let(:human) {double("human")}
  let(:computer) {double("computer")}
  subject {described_class.new(human, computer)}

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
end