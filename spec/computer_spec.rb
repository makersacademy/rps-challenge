require './lib/computer'

describe Computer do

  it 'can pick a weapon' do
    computer = Computer.new
    allow(computer).to receive(:weapon).and_return("Paper")
    expect(computer.weapon).to eq "Paper"
  end

end