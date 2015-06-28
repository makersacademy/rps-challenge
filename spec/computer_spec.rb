require 'computer'

describe Computer do

  it 'allows a player to select from Rock, Paper, Scissors' do
    computer = Computer.new
    expect(computer.choose).to eq(:rock).or eq(:paper).or eq(:scissors)
  end


end





  