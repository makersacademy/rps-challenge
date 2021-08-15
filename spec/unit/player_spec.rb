require 'player'

describe Player do
  it 'initializes with players name' do
    expect(subject.name).to eq 'Gandalf'
  end

  it 'takes players move as argument' do
    subject.move('rock')
    expect(subject.p_move).to eq 'rock'
  end
end
