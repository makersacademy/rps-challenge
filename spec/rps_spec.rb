require 'rps'

describe Rps do 
  
  it 'provides CPU with a random choice' do
    srand(23332)
    expect(subject.cpu_choice).to eq "Paper"
  end

  it 'compares user choice and cpu choice, returns winner' do 
    srand(23332)
    this_round = Rps.new
    expect(this_round.compare('Scissors')).to eq "You win"
  end
end