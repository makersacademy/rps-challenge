require_relative '../lib/rps_game.rb'

describe RPSGame do
  subject(:game) { RPSGame.new }

  context 'player wins' do
    describe '#play_game(choice)' do
      it 'returns a statement showing player has won' do
        choice = 'Rock'
        win_message = "Computer chose scissors. You chose rock. You win, "
        expect(game.play_game(choice)). to eq win_message
      end
    end
  end
end
