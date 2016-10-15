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

end
