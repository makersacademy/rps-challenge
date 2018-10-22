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

  it 'selects lizard as weapon for computer' do
    allow(Computer::WEAPONS).to receive(:sample).and_return("Lizard")
    expect(subject.random_move).to eq("Lizard")
  end

  it 'selects spock as weapon for computer' do
    allow(Computer::WEAPONS).to receive(:sample).and_return("Spock")
    expect(subject.random_move).to eq("Spock")
  end

end
