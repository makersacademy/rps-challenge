require 'player'

describe Player do

  subject(:player) {described_class.new(choice)}
  let(:choice){double(:choice)}

  describe "#choice"
  it 'returns player\'s choice' do
    expect(player.choice).to eq choice
  end
end
