describe RockPaperScissors do

  describe '#computer_choice' do
    it 'picks the correct winner' do
      game = RockPaperScissors.new("Rock")
      expect(["Rock", "Paper", "Scissors"]).to include(game.computer_choice)
    end
  end

  describe '#who_wins?' do
    it 'picks the correct winner' do
      game = RockPaperScissors.new("Rock")
      allow(game).to receive(:computer_choice).and_return("Scissors")
      expect(game.who_wins?).to eq "user"
    end
  end
end
