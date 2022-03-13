require 'cpu.rb'

describe CPU do

  it 'should return a random move' do
    expect(subject.random_move).to eq('Rock').or eq('Paper').or eq('Scissors')
  end

  it 'should be return the name CPU' do
    expect(subject.name).to eq CPU::NAME
  end

end