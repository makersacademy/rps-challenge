require 'player'
describe Player do
  it 'has a name' do
    # player = described_class.new("Jade")
    subject.name = "Jade"
    expect(subject.name).to eq "Jade"
  end
end
