require "computer"

describe Computer do

    it "can select rock at random" do
      allow(subject).to receive(:select).and_return(:rock)
      expect(subject.select).to eq :rock
    end

    it "can select paper at random" do
      allow(subject).to receive(:select).and_return(:paper)
      expect(subject.select).to eq :paper
    end

    it "can select scissors at random" do
      allow(subject).to receive(:select).and_return(:scissors)
      expect(subject.select).to eq :scissors
    end

end
