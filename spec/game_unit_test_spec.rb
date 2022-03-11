require 'game'

describe Game do
  it 'can produce a random CPU move' do
    expect(['rock','paper','scissors']).to include(subject.cpu_move)
  end

  it 'returns the result of the game' do
    p gameplay('rock')
  end
end