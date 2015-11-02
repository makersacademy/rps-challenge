require 'player'

describe Player do

  subject(:player) {described_class.new( selection)}
  let(:selection){double(:selection)}

  describe "#selection"
  it 'returns player\'s selection' do
    expect(player.selection).to eq selection
  end
end
