require 'game'

describe Game do
  let(:test_game) { Game.new }

  describe "#computer_move" do
    it 'randomly selects a move from the list of possible move options - stubbed with paper' do
      srand 1
      expect(test_game.computer_move).to eq "paper"
    end
  end

  describe "#win_lose" do
    it 'determines who wins or loses' do
      expect(test_game.win_lose('scissors', 'paper')).to eq "You WIN!!"
      expect(test_game.win_lose('scissors', 'rock')).to eq "You LOSE...:("
      expect(test_game.win_lose('scissors', 'scissors')).to eq "You DRAW...fight again!"
    end
  end
end
