require 'computer'

describe Computer do
  subject { described_class.new }

  it 'returns random move' do 
    srand(67810)
    expect(subject.random_move).to eq 'rock'
  end

  it 'returns random move' do 
    srand(67809)
    expect(subject.random_move).to eq 'scissors'
  end
end