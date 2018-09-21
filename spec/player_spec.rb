require 'player.rb'

describe Player do
  let(:name) { double(:name) }
  subject { Player.new(name) }
  it 'is initialized with a name as a parameter' do
    expect(subject.name).to eql(name)
  end
end