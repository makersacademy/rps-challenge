require 'computer'

describe Computer do

  it 'randomly selects from Rock, Paper, Scissors' do
    computer = Computer.new
    expect(computer.choose).to eq(:rock).or eq(:paper).or eq(:scissors)
  end


end





  