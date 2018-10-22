require 'computer'

describe Computer do
  it 'initializes a computer with a random move' do
    expect(subject.name).to eq("The Computer")
    expect(subject.move).to eq(nil)
  end

  it 'selects a random weapon for computer' do
    allow(Computer::WEAPONS).to receive(:sample).and_return("Scissors")
    expect(subject.random_move).to eq("Scissors")
  end

end
