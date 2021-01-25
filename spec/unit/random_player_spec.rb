require 'random_player'

describe RandomPlayer do
  include RandomPlayer

  it 'returns rock' do
    srand(0)
    expect(return_standard).to eq 'rock'
  end

  it 'returns paper' do
    srand(1)
    expect(return_standard).to eq 'paper'
  end

  it 'returns sissors' do
    srand(3)
    expect(return_standard).to eq 'sissors'
  end

  it 'only uses standard' do
    array = Array.new
    20.times {array.push(return_standard)}
    expect(array).not_to include('lizard', 'spock')
  end

end
