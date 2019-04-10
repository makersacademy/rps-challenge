describe RockPaperScissors do
  describe '#who_wins?' do
    it 'returns a tie' do
      srand(67811)
      game = RockPaperScissors.new("Rock")
      puts game.computer_choice
      expect(game.who_wins?).to eq "tie"
    end

    it 'returns a user win' do
      srand(67809)
      game = RockPaperScissors.new("Rock")
      puts game.computer_choice
      expect(game.who_wins?).to eq "user"
    end

    it 'returns a computer win' do
      srand(9999999)
      game = RockPaperScissors.new("Rock")
      puts game.computer_choice
      expect(game.who_wins?).to eq "computer"
    end
  end
end
