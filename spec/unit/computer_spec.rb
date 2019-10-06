require 'computer'

describe Computer do

  it 'initializes with a move array' do
    expect(subject.moves).not_to be_empty
  end

end
