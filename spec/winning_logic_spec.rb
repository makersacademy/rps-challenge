require 'winning_logic'

describe WinningLogic do
  let(:play_rock)     { double(:player, move: "Rock", add_point: nil, name: nil) }
  let(:play_paper)    { double(:player, move: "Paper", add_point: nil, name: nil) }
  let(:play_scissors) { double(:player, move: "Scissors", add_point: nil, name: nil) }

  it 'Will declare a draw if both players make the same move' do
    expect(subject.winner(play_rock, play_rock)).to eq "Draw"
  end

  it 'Will declare player 1 the winner' do
    expect(play_rock).to receive(:add_point)
    subject.winner(play_rock, play_scissors)
  end

  it 'Will declare player 2 the winner' do
    expect(play_scissors).to receive(:add_point)
    subject.winner(play_paper, play_scissors)
  end
end
