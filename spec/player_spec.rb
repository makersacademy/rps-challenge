require 'player'
describe Player do
  let(:subject) { Player.new("name") }
  it 'is a class' do
    expect(subject).to be_an_instance_of(described_class)
  end

  it 'has a name' do
    expect(subject).to respond_to(:name)
  end
end