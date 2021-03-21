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
      expect(test_game.setup('Jack', 'K-2SO')).to eq({
        "Jack" => 0,
        "Draws" => 0,
        "K-2SO" => 0,
      })
    end
  end

  describe '#play_round' do
    context 'with one player' do
      it 'it runs the computer move and determines who wins' do
        test_game.setup('Jack', 'Pam')
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

  describe '#reset_round' do
    it 'updates the round number and sets some variables to nil' do
      test_game.number_players('Two Players')
      test_game.setup('Jack', 'Pam')
      test_game.player_1_move = 'scissors'
      test_game.player_2_move = 'rock'
      expect(test_game.reset_round).to eq 2
    end
  end

  describe '#display_score' do
    it 'displays the current score' do
      test_game.number_players('Two Players')
      test_game.setup('Jack', 'Pam')
      test_game.player_1_move = 'scissors'
      test_game.player_2_move = 'rock'
      test_game.play_round
      expect(test_game.display_score).to eq({
        "Jack" => 0,
        "Draws" => 0,
        "Pam" => 1,
      })
    end
  end

  describe '#victory_message' do
    it 'displays the victory message on the last screen' do
      test_game.number_players('Two Players')
      test_game.setup('Jack', 'Pam')
      expect(test_game.victory_message).to eq 'It was a draw!'
    end
  end
  # redundant tests, but useful to show private methods work

  describe "#computer_move" do
    it 'randomly selects a move from the list of possible move options - stubbed with paper' do
      srand 1
      expect(test_game.send(:computer_move)).to eq "paper"
    end
  end
end
