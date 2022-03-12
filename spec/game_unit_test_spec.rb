require 'game'

describe Game do
  it 'can produce a random CPU move' do
    expect(['rock','paper','scissors']).to include(subject.cpu_move)
  end

  it 'returns the result of the game' do
    expect(["CPU chose paper. Paper wraps rock. You lose.",  
      "CPU chose scissors. Rock destroys scissors. You win.", 
      "CPU chose the same move. It's a tie."]).to include(subject.gameplay('rock'))
  end
end