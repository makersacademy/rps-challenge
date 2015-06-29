require 'game'

describe Game do
  
  it 'returns Rock, Paper or Scissors' do
    expect(['Rock', 'Scissors', 'Paper']).to include(subject.play)
  end
end