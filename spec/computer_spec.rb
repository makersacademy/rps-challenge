require 'computer'

describe Computer do
  it 'calculates the move of the computer' do
    computer = Computer.new
    allow(Kernel).to receive(:rand).and_return('Rock')
    expect(computer.choice).to eq 'Rock'
  end
end
