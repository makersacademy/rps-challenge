require 'player'

describe Player do
  it 'initializes with players name' do
    expect(subject.name).to eq 'Gandalf'
  end

  it 'takes players move as argument' do
    subject.players_move('rock')
    expect(subject.player_move).to eq 'rock'
  end
end