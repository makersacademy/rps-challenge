require 'cpu'

describe Cpu do
  let(:cpu) { Cpu.new }

  it 'can choose Rock, Paper or Scissors' do
    choice_array = []
    100.times { choice_array << cpu.choice }
    expect(choice_array.uniq).to contain_exactly('Rock', 'Paper', 'Scissors')
  end
end
