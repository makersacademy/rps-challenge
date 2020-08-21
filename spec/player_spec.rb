require 'player'

describe Player do
  it 'returns the name' do
    expect(described_class.name).to eq "Dummy"
  end
end
