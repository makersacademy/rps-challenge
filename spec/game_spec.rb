describe Game do

  player1 = Player.new("Kath")
  subject(:game) {described_class.new(player1)}

  describe '#ai_choice' do

    it "Should include one of the weapon options" do
      expect(["rock", "paper", "scissors"]).to include game.ai_choice
    end

    before do
      allow(game).to receive(:ai_choice).and_return("rock")
    end

    it "Should return rock" do
      expect(game.ai_choice).to eq "rock"
    end
  end

    describe '#outcome' do
    #
    #   before do
    #   allow(game).to receive(:ai_choice).and_return("rock")
    # end

    it "Should show that a player has won the game" do
      game.p1choice("paper")
      allow(game).to receive (:ai_choice).and_return("rock")
      expect(game.outcome).to eq "You win"
    end
  end

  describe '#p1_choice' do
    it "Should allow player to pick a weapon" do
      weapon = "rock"
      expect(game.p1choice(weapon)).to eq ["rock"]
    end
  end

end
