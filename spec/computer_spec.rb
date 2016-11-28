describe Computer do

  let(:computer) {described_class.new}

  context "When initialized it" do

    it "Has a username" do
      allow(computer).to receive(:name).and_return('Hal')
      expect(computer.name).to eq('Hal')
    end

    it "has choice set to nil" do
      expect(computer.choice).to eq nil
    end
  end

  context "When the choose method is called" do
    it "should randomly choose rock, paper or scissors" do
      expect(computer.choose).to eq(:rock).or(eq(:paper)).or(eq(:scissors))
    end
  end









end
