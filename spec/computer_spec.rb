require 'computer'
describe Computer do
  it 'returns scissors' do
    srand(4)
    expect(Computer.play).to eq "Scissors"
  end
end
