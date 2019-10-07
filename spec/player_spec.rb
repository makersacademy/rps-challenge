describe Player do
  context "created with a name" do
    let(:subject) { Player.new("Herb") }

    it "has the right name" do
      expect(subject.name).to eq "Herb"
    end

    it "is not a robot" do
      expect(subject.robot?).to eq false
    end
  end
  
  context "created without a name" do
    let(:subject) { Player.new("") }

    it "is called The Robot" do
      expect(subject.name).to eq "The Robot"
    end

    it "is a robot" do
      expect(subject.robot?).to eq true
    end
  end
end
