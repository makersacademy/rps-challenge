
describe Game do
  describe "#win_lose_draw" do
    it 'returns win if the player wins' do
      game = Game.new("rock", "John")
      game.computer_input = "scissors"
      expect(game.win_lose_draw).to eq "win"
    end

    it 'returns lose if the player loses' do
      game = Game.new("rock", "John")
      game.computer_input = "paper"
      expect(game.win_lose_draw).to eq "lose"
    end

    it 'returns draw if the game is a draw' do
      game = Game.new("rock", "John")
      game.computer_input = "rock"
      expect(game.win_lose_draw).to eq "draw"
    end

  end
end
