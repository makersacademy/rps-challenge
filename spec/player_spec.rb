require 'player'

describe Player do

  subject(:hunor) { described_class.new('Hunor') }

  it 'has a name' do
    expect(hunor.name).to eq 'Hunor'
  end

  subject(:computer) { described_class.new('Computer') }

  it 'has default name' do
    expect(computer.name).to eq 'Computer'
  end
end
