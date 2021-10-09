require 'computer'

describe Computer do
  it 'returns a hand for the game' do
    expect(subject.hand).to eq('rock').or eq('paper').or eq('scissors')
  end
end