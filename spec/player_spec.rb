require "player"

describe Player do

  let(:subject) { described_class.new( { hands: [ :rock, :paper, :scissors ] } ) }

  it "has a choice of hands" do
    expect(subject).to respond_to(:hands)
  end

  it "can play a hand" do
    expect(subject).to respond_to(:hand_to_play)
  end

  describe "#hands" do
    it "is populated with choices on initalise" do
      expect(subject.hands).to eq([:rock, :paper, :scissors])
    end
  end

  describe "#hand_to_play" do
    it "has selected hand" do
      subject.set_hand(:rock)
      expect(subject.hand_to_play).to eq(:rock)
    end
  end

  describe "#set_hand" do
    it "only allows allowed hands" do
      expect{subject.set_hand(:bananas)}.to raise_error "not a valid hand"
    end
  end
end