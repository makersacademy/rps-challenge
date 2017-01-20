describe Game do

  player1 = Player.new("Kath")
  subject(:game) {described_class.new(player1)}

  describe '#ai_choice' do

    it "Should return rock" do
      allow(game).to receive(:ai_choice) {"rock"}
      expect(game.ai_choice).to eq "rock"
    end

    it "Should return paper" do
      allow(game).to receive(:ai_choice) {"paper"}
      expect(game.ai_choice).to eq "paper"
    end

    it "Should return scissors" do
      allow(game).to receive(:ai_choice) {"scissors"}
      expect(game.ai_choice).to eq "scissors"
    end
  end

  describe '#p1_choice' do

    it "Should allow player to pick 'rock' as weapon" do
      weapon = "rock"
      expect(game.p1choice(weapon)).to eq ["rock"]
    end

    it "Should allow player to pick 'paper' as weapon" do
      weapon = "paper"
      expect(game.p1choice(weapon)).to eq ["paper"]
    end

    it "Should allow player to pick 'scissors' as weapon" do
      weapon = "scissors"
      expect(game.p1choice(weapon)).to eq ["scissors"]
    end
  end

  describe '#reset' do

    it "should ensure the ai choice is empty so a new game can start" do
      game.reset
      expect(game.aichoice).to eq []
    end
  end

end
