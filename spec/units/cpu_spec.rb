require 'cpu.rb'

describe CPU do

  it 'should return a random move' do
    expect(subject.move).to eq('rock').or eq('paper').or eq('scissors')
  end

end