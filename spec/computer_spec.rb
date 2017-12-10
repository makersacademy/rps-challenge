describe Computer do

  subject(:computer) { described_class.new }

  describe "#choose / #choice" do
    it "chooses rock and shows the choice of the computer" do
      srand(2)
      computer.choose
      expect(computer.choice).to eq :rock
    end
    it "chooses paper and shows the choice of the computer" do
      srand(1)
      computer.choose
      expect(computer.choice).to eq :paper
    end
    it "chooses scissors and shows the choice of the computer" do
      srand(3)
      computer.choose
      expect(computer.choice).to eq :scissors
    end
  end

end
