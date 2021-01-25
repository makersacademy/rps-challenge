require 'random_player'

describe RandomPlayer do
  include RandomPlayer

  it 'returns sissors' do
    srand(4)
    expect(return_standard).to eq 'sissors'
  end

  it 'returns rock' do
    srand(2)
    expect(return_standard).to eq 'rock'
  end

  it 'returns paper' do
    srand(1)
    expect(return_standard).to eq 'paper'
  end

end
