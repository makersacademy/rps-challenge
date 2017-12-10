require 'player'

describe Player do
  subject(:player) { described_class.new "James" }
  it 'should return the players name' do
    expect(subject.name).to eq "James"
  end
end
