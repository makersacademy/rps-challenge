require "player"

describe Player do
  let(:human) {double("human")}
  let(:computer) {double("computer")}
  subject {described_class.new(human, computer)}

  context "has attributes" do
    it "human" do
      expect(subject).to have_attributes(human: human)
    end
  end
end