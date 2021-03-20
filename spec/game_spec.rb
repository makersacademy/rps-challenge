require 'game'

describe Game do
  let(:test_game) { Game.new }

  describe "#number_players" do
    it "tells you the number of players" do
      expect(test_game.number_players('Two Players')).to eq true
    end
  end

  describe "#setup" do
    it 'assigns player name and computer name if no player 2' do
      expect(test_game.setup('Jack', 'K-2SO')).to eq 'K-2SO'
    end
  end

  describe '#play_round' do
    context 'with one player' do
      it 'it runs the computer move and determines who wins' do
        test_game.player_1_move = 'scissors'
        srand 1
        expect(test_game.play_round).to eq 'You WIN!!'
      end
    end

    context 'with two players' do
      it 'determines who wins' do
        test_game.number_players('Two Players')
        test_game.setup('Jack', 'Pam')
        test_game.player_1_move = 'scissors'
        test_game.player_2_move = 'rock'
        expect(test_game.play_round).to eq 'Pam is the WINNER!'
      end
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
      expect(test_game.send(:win_lose, 'scissors', 'scissors')).to eq "Its a DRAW...fight again!"
    end
  end
end
