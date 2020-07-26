require 'player'
describe Player do
  subject { described_class.new("Haz") }
  it 'initializes with a name' do
    expect(subject.name).to eq "Haz"
  end
end
