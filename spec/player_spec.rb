require 'player'

describe Player do
  subject { described_class.new("Jamie") }

  it 'should have a name' do
    expect(subject.name).to eq('Jamie')
  end

end
