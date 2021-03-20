require 'game'

describe Game do
  let(:test_game) { Game.new }

  describe "#setup" do
    it 'assigns player name and computer name if no player 2' do
      expect(test_game.setup('Jack')).to eq 'K-2SO'
    end
  end

  describe '#play_round' do
    it 'it runs the computer move and determines who wins' do
      test_game.player_1_move = 'scissors'
      srand 1
      expect(test_game.play_round).to eq 'You WIN!!'
    end
  end

  # redundant tests, but useful to show private methods work

  describe "#computer_move" do
    it 'randomly selects a move from the list of possible move options - stubbed with paper' do
      srand 1
      expect(test_game.send(:computer_move)).to eq "paper"
    end
  end

  describe "#win_lose" do
    it 'determines who wins or loses' do
      expect(test_game.send(:win_lose, 'scissors', 'paper')).to eq "You WIN!!"
      expect(test_game.send(:win_lose, 'scissors', 'rock')).to eq "You LOSE...:("
      expect(test_game.send(:win_lose, 'scissors', 'scissors')).to eq "You DRAW...fight again!"
    end
  end
end
