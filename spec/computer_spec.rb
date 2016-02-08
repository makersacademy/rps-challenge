require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  it 'can select rock at random' do
    allow(computer).to receive(:random).and_return(1)
    computer.set_option
    expect(computer.rock).to eq true
  end

  it 'can select paper at random' do
    allow(computer).to receive(:random).and_return(2)
    computer.set_option
    expect(computer.paper).to eq true
  end

  it 'can select scissors at random' do
    allow(computer).to receive(:random).and_return(3)
    computer.set_option
    expect(computer.scissors). to eq true
  end

  it 'prints the result' do
    allow(computer).to receive(:random).and_return(2)
    computer.set_option
    message = "Computer Chose Paper: You Lose"
    expect(computer.result("Rock")).to eq message
  end

end
