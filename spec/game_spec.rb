describe Game do
  describe '#initialize' do
    it "saves the player's decision" do
      game = Game.new("Rock", "Scissors")
      expect(game.player).to eq "Rock"
    end
    it "saves the computer's decision" do
      game = Game.new("Rock", "Scissors")
      expect(game.computer).to eq "Scissors"
    end
  end
  describe '#draw?' do
    it 'returns true if player and computer have the same decision' do
      game = Game.new("Rock", "Rock")
      expect(game.draw?).to eq true
    end
  end
  describe '#win?' do
    it 'returns true if player wins against computer' do
      game = Game.new("Rock", "Scissors")
      expect(game.win?).to eq true
    end
    describe '#lose?' do
      it 'returns true if player loses against computer' do
        game = Game.new("Rock", "Paper")
        expect(game.lose?).to eq true
      end
    end
  end
end
