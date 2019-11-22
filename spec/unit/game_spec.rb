require "./lib/game.rb"

describe Game do
  context "can compare players responses:" do

    it 'Rock - Paper: Player2 wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player2 Wins"
    end

    it 'Rock - Rock: Draw' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Draw"
    end

    it 'Rock - Scissors: Player1 wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player1 Wins"
    end

    it 'Paper - Paper: Draw' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Draw"
    end

    it 'Paper - Rock: Player1 wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player1 Wins"
    end

    it 'Paper - Scissors: Player2 wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player2 Wins"
    end

    it 'Scissors - Paper: Player1 wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player1 Wins"
    end

    it 'Scissors - Rock: Player2 Wins' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Player2 Wins"
    end

    it 'Scissors - Scissors: Draw' do
      game = Game.new("Rock", "Paper")
      expect(game.compare("Rock", "Paper")).to eq "Draw"
    end

  end
end
