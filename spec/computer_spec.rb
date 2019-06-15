require "computer"

describe Computer do

  subject(:computer) { Computer.new }

  it "Returns Computer's move choice" do
    srand(4)
    expect(computer.computer_move).to eq "Scissors"
  end
end
