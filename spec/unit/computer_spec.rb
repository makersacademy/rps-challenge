require './lib/computer'

describe Computer do

  it 'makes a random selection of rock paper or scissors' do
    srand(4)
    expect(subject.choice).to eq "Scissors"
  end

end