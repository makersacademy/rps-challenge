require 'computer_rps'

describe Computer do
  it 'it generates computers random move' do
    subject.move
    expect(['Rock', 'Paper', 'Scissors']).to include(subject.move)
  end
end
