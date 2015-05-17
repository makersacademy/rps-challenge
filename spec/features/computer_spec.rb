require 'computer'

describe Computer do
  it 'randomly generates a move' do
    subject.play
    expect(subject.moves).not_to be nil
  end
end
