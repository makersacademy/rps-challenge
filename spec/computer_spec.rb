require './lib/computer.rb'

describe Computer do

  it "checks if it can return a random move" do
    computer = Computer.new
    allow(Kernel).to receive(:rand).and_return(1)
    expect(computer.random_move).to eq 'Paper'
  end
  
end
