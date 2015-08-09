require 'game.rb'

describe Game do
  it 'raises an error if invalid options are provided' do
    expect { subject.result('banana', 'paper') }.to raise_error 'invalid options'
  end
  it 'reports a draw if same options are provided' do
    expect(subject.result('paper', 'paper')).to eq 'draw'
  end
  it 'rock beats scissors' do
    expect(subject.result('rock', 'scissors')).to eq 'player 1'
  end
  it 'scissors beats paper' do
    expect(subject.result('paper', 'scissors')).to eq 'player 2'
  end
  it 'paper beats rock' do
    expect(subject.result('paper', 'rock')).to eq 'player 1'
  end
end
