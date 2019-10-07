require 'game'

RSpec.describe "Game" do
  context "player wins" do
    it "player rock computer scissors" do
      game = Game.new('rock', 'scissors')
      expect(game.play).to eq "You win"
    end
    it "player paper computer rock" do
      game = Game.new('paper', 'rock')
      expect(game.play).to eq "You win"
    end
    it "player sicssors computer paper" do
      game = Game.new('scissors', 'paper')
      expect(game.play).to eq "You win"
    end
  end
end
