require 'computer_rps'

describe Computer do
  it 'it generates computers random move to be Rock' do
    subject.move
    expect(['Rock', 'Paper', 'Scissors']).to include(subject.move)
  end
end
