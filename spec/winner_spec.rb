require 'winner'

describe Winner do

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "rock", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "rock", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "rock", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "paper", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "paper", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "paper", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end

  it 'should determine name1 as the winner' do
    players = double(:players, move1: "scissors", move2: "rock", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "James won!"
  end

  it 'should determine name2 as the winner' do
    players = double(:players, move1: "scissors", move2: "paper", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "Caitlin won!"
  end

  it 'should determine a draw' do
    players = double(:players, move1: "scissors", move2: "scissors", name1: "Caitlin", name2: "James")
    winner = Winner.new(players)
    expect(winner.determine).to eq "It's a draw!"
  end














  # context 'game is rock' do
  #   let(:game) { double(:game, move: "rock") }
  #   it 'should determine user as the winner' do
  #     user_move = "paper"
  #     expect(winner.determine(game.move, user_move)).to eq winner.won
  #   end
  #
  #   it 'should determine user as the loser' do
  #     user_move = "scissors"
  #     expect(winner.determine(game.move, user_move)).to eq winner.lost
  #   end
  #
  #   it 'should determine that it is a draw' do
  #     user_move = "rock"
  #     expect(winner.determine(game.move, user_move)).to eq winner.draw
  #   end
  # end
  #
  # context 'game is paper' do
  #   let(:game) { double(:game, move: "paper") }
  #   it 'should determine that it is a draw' do
  #     user_move = "paper"
  #     expect(winner.determine(game.move, user_move)).to eq winner.draw
  #   end
  #
  #   it 'should determine user as the winner' do
  #     user_move = "scissors"
  #     expect(winner.determine(game.move, user_move)).to eq winner.won
  #   end
  #
  #   it 'should determine user as the loser' do
  #     user_move = "rock"
  #     expect(winner.determine(game.move, user_move)).to eq winner.lost
  #   end
  # end
  #
  # context 'game is scissors' do
  #   let(:game) { double(:game, move: "scissors") }
  #   it 'should determine user as the loser' do
  #     user_move = "paper"
  #     expect(winner.determine(game.move, user_move)).to eq winner.lost
  #   end
  #
  #   it 'should determine its a draw' do
  #     user_move = "scissors"
  #     expect(winner.determine(game.move, user_move)).to eq winner.draw
  #   end
  #
  #   it 'should determine user as the winner' do
  #     user_move = "rock"
  #     expect(winner.determine(game.move, user_move)).to eq winner.won
  #   end
  # end
end
