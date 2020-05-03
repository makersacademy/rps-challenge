require 'computer'

describe Computer do
  it 'Chooses a random shape' do
    srand(8)
    expect(subject.choice).to eq 'Rock'
  end

  it 'Chooses a random shape' do
    srand(55)
    expect(subject.choice).to eq 'Paper'
  end

end
