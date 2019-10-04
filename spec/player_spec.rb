require 'player'

describe Player do

  it 'initializes with a name' do
    bob = described_class.new('Bob')
    expect(bob.name).to eq 'Bob'
  end

  it 'initializes with a default name of Jake' do
    bob = described_class.new
    expect(bob.name).to eq 'Jake'
  end

end