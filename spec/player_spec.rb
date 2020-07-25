describe Player do
  subject(:lanie) { Player.new("Lanie") }

  describe "#name" do
    it "returns the name" do
      expect(lanie.name).to eq "Lanie"
    end
  end

  describe "#computer_answer" do
    it "returns random selection" do
      @computer = Player.new("Computer")
      @computer_move = @computer.random_selection
      expect(@computer.random_selection).to eq @computer_move
    end
  end
end
