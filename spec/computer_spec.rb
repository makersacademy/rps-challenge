describe Computer do

  before do
    srand(4)
  end

  it 'has a name by default' do
    expect(subject.name).to eq :computer
  end

  it 'picks a move on initialization' do
    expect(subject.move).to eq 'scissors'
  end

  it 'returns a random value' do
    srand(2)
    expect(subject.move).to eq 'rock'
  end

end



