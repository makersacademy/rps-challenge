require 'computer'
describe Computer do
  it 'returns a random rps choice' do
    computer = Computer.new
    srand(4)
    expect(computer.random_choice).to eq "scissors"
  end

end
