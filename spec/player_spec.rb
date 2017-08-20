require './lib/player'

describe Player do
  subject { described_class.new('Liz') }

  it 'initializes with a name' do
    expect(subject.name).to eq 'Liz'
  end
end
