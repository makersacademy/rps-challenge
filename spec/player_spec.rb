require 'player'

describe Player do

  let(:name) { double :name}

  subject { described_class.new(name) }

  it 'has a name' do
    expect(subject.name).to eq name
  end
end
