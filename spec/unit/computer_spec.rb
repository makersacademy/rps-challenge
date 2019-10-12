require 'computer'

describe Computer do

  it 'initializes with a move array' do
    expect(subject.moves).not_to be_empty
  end

  it 'outputs a random move' do
    allow(subject.moves).to receive(:sample).and_return("Rock")
    expect(subject.choice).to eq 'Rock'
  end

end
