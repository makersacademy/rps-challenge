require 'player'

describe Player do
  subject { described_class.new("Kevin") }

  it 'has a name attribute' do
    expect(subject.name).to eq("Kevin")
  end
end
