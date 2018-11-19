require 'game'

describe Game do
  context '#Game result' do
    it 'expects to show outcome of a game with Player 1 as the winner' do
      subject = Game.new("Rock", "Scissors")
      expect(subject.game_result("Rock", "Scissors")).to eq "win"
    end

    it 'expects to show outcome of a game with the computer as the winner' do
      subject = Game.new("Scissors", "Rock")
      expect(subject.game_result("Scissors", "Rock")).to eq "lose"
    end

    it 'expects to show outcome of a game as a draw' do
      subject = Game.new("Paper", "Paper")
      expect(subject.game_result("Paper", "Paper")).to eq "draw"
    end
  end
end
