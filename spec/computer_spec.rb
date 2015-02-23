require 'computer'

describe Computer do

  it 'can randomly chooose rock, paper or scissors' do
    computer = Computer.new
    computer.choice
    expect(computer.choice).to eq("rock")
  end




end