require 'computer'

describe Computer do
  it 'Automatically chooses Rock, Paper or Scissors' do
    srand(3)
    expect(subject.move).to eq('Scissors')
  end
end