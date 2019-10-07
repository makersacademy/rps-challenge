require 'computer'

describe Computer do
  it "recieves a choice" do
    computer = Computer.new(:rock)
    expect(computer.choice).to eq(:rock)
  end
end
