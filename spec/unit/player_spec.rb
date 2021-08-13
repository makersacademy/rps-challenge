require 'player'

describe Player do  
  subject(:player) { described_class.new("Wulfie") }

  before { skip "TODO" }

  it 'should have a name' do
    expect(subject).to respond_to(:name)
  end
end
