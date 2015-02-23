require 'computer'

describe Computer do

  it 'can randomly chooose rock, paper or scissors' do
    expect(Computer::OPTIONS).to receive(:sample).and_return "rock"
    computer = Computer.new
    expect(computer.choice).to eq("rock")
  end

end