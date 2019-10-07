require 'computer'
describe Computer do
  it 'can return a move' do
    expect(subject).to respond_to(:choice)
  end

  it 'returns a random move' do
    srand(678_909)
    expect(subject.choice).to eq "Rock"
  end
end
