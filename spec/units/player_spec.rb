require 'player'

describe Player do
  subject { described_class.new("Kevin") }

  it 'has a name attribute' do
    expect(subject.name).to eq("Kevin")
  end
  it 'player starts with no weapon choice made' do
    expect(subject.weapon).to eq nil
  end
end
