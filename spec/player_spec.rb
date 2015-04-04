require './lib/player'

describe Player do
  it 'can recieve a name as an argument' do
    expect(described_class).to receive(:new).with(instance_of(String))
    described_class.new("Rob")
  end
end