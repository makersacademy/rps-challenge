require 'player'

describe Player do
  name = 'Name'
  subject { described_class.new(name) }

  it 'can report its name' do
    expect(subject.name).to eq name
  end
end
