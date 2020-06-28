describe Game do
  describe "#computer" do
    it "should return Paper" do
      srand(1)
      expect(subject.computer).to eql("Paper")  
    end
  end

  describe "#result" do
    it "should return a draw" do
      player_choice = "Rock"
      computer = "Rock"
      expect(subject.result(player_choice, computer)).to eql("Result: draw")
    end

    it "should return a player to win" do
      player_choice = "Rock"
      computer = "Scissors"
      expect(subject.result(player_choice, computer)).to eql("Result: Player wins")
    end

    it "should return computer to win" do
      player_choice = "Rock"
      computer = "Paper"
      expect(subject.result(player_choice, computer)).to eql("Result: Computer wins")
    end

    it "should return player to win" do
      player_choice = "Paper"
      computer = "Rock"
      expect(subject.result(player_choice, computer)).to eql("Result: Player wins")
    end

    it "should return Computer to win" do
      player_choice = "Paper"
      computer = "Scissors"
      expect(subject.result(player_choice, computer)).to eql("Result: Computer wins")
    end

    it "should return player to win" do
      player_choice = "Scissors"
      computer = "Paper"
      expect(subject.result(player_choice, computer)).to eql("Result: Player wins")
    end

    it "should return Computer to win" do
      player_choice = "Scissors"
      computer = "Rock"
      expect(subject.result(player_choice, computer)).to eql("Result: Computer wins")
    end
  end
end
