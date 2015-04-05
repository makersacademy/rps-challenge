require './lib/auto_player'

describe AutoPlayer do
  subject { described_class.new("Holly") }

  it 'can recieve a name as an argument' do
    expect(described_class).to receive(:new).with(instance_of(String))
    described_class.new("Holly")
  end
  it 'can play a random move' do
    expect([:rock, :paper, :scissors]).to include subject.move
  end
end