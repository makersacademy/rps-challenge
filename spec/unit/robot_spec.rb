require 'robot'

describe Robot do

  it 'returns random move rock' do 
    srand(67810)
    expect(subject.random_move).to eq 'rock'
  end

  it 'returns random move paper' do 
    srand(67800)
    expect(subject.random_move).to eq 'paper'
  end
  
  it 'returns random move scissors' do 
    srand(67809)
    expect(subject.random_move).to eq 'scissors'
  end
end