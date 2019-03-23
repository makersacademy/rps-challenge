require './lib/result'

describe Result do

  it 'returns a draw' do
    expect(Result.run('rock', 'rock')).to eq :draw
  end

  it 'returns a defeat' do
    expect(Result.run('scissors', 'rock')).to eq :lose
  end

  it 'returns a victory' do
    expect(Result.run('scissors', 'paper')).to eq :win
  end

end
