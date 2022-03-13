require 'cpu.rb'

describe CPU do

  it 'should return a random move' do
    expect(subject.move).to eq('rock').or eq('paper').or eq('scissors')
  end

  it 'should be return the name CPU' do
    expect(subject.name).to eq CPU::NAME
  end

end