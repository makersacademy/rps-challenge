require 'winner'

describe Winner do
  let(:winner) { Winner.new }

  it 'should determine name1 as the winner' do
    name1 = double(:name1, move: "rock", name: "Caitlin")
    name2 = double(:name1, move: "paper", name: "James")
    expect(winner.determine(name1, name2)).to eq "Caitlin won!"
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
