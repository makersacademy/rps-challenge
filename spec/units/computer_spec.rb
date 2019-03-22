require 'computer'
describe Computer do
  it 'can return a move' do
    expect(subject).to respond_to(:move)
  end

  it 'returns a random move' do
    srand(678_909)
    expect(subject.move).to eq "Rock"
  end
end
