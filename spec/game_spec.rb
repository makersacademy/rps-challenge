require 'game'
describe 'Game' do
  context "player wins" do
    it "player rock computer scissor" do
      game = Game.new('rock', 'scissor')
      expect(game.play).to eq "You win"
    end

    it "player paper computer rock" do
      game = Game.new('paper', 'rock')
      expect(game.play).to eq "You win"
    end

    it "player scissor computer paper" do
      game = Game.new('scissor', 'paper')
      expect(game.play).to eq "You win"
    end
  end

end
