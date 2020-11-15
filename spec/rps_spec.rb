require 'rps'

describe Rps do 
  
  it 'provides CPU with a random choice' do
    srand(23332)
    expect(subject.cpu_choice).to eq "Paper"
  end
end