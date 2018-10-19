require 'winner'

describe Winner do
  let(:winner) { Winner.new }

  it 'should determine user as the winner' do
    game = double(:game, move: "rock")
    user_move = "paper"
    expect(winner.determine(game.move, user_move)).to eq "You won!"
  end

  it 'should determine user as the loser' do
    game = double(:game, move: "rock"
    user_move = "scissors"
    expect(winner.determine(game.move, user_move)).to eq "You lost!"
  end

  it 'should determine that it is a draw' do
    game = double(:game, move: "rock")
    user_move = "rock"
    expect(winner.determine(game.move, user_move)).to eq "It's a draw!"
  end

end
