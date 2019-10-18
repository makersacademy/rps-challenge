require 'game'
require 'player'

describe Game do

  it 'tests for winner' do
    adam = Player.new('Adam')

    player_move = adam.players_move("rock")
    subject.workout_winner(player_move, "paper")

    expect(subject.winner).to eq('adam')
  end

end
