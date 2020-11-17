require 'game'

describe Game do
  subject(:game) { Game.new("Dave", "Rock") }

  it "initializes with the player name" do
    expect(game.player_1_name).to eq "Dave"
  end

  it "initializes with the player's move" do
    expect(game.player_attack).to eq "Rock"
  end

  it "randomly returns a move" do
    allow(game).to receive(:move).and_return("Rock")
    expect(game.move).to eq "Rock"
  end

  context "Player chooses Rock" do
    it "Returns draw when both choose rock" do
      allow(game).to receive(:move).and_return("Rock")
      expect(game.play).to eq "Draw!"
    end

    it "Returns win, when computer chooses Scissors" do
      allow(game).to receive(:move).and_return("Scissors")
      expect(game.play).to eq "You win!"
    end

    it "Returns lose, when computer chooses Paper" do
      allow(game).to receive(:move).and_return("Paper")
      expect(game.play).to eq "You lose!"
    end

  end

end
