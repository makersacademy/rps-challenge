require 'computer'

describe Computer do
  it 'initializes a computer with a random move' do
    expect(subject.name).to eq("The Computer")
    expect(subject.move).to eq(nil)
  end
end
