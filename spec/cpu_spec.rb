require 'cpu'

describe Cpu do

  subject(:cpu) {Cpu.new}

  it 'chooses rock' do 
    srand(100)
    expect(cpu.move).to eq "Scissors"
  end
  it 'chooses paper' do 
    srand(99)
    expect(cpu.move).to eq "Paper"
  end
  it 'chooses scissors' do 
    srand(98)
    expect(cpu.move).to eq "Rock" 
  end
end
