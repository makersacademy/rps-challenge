require 'player'

describe Player do
  subject(:player) { described_class.new("Joe") }

  describe '#new' do
    context 'when initialised' do
      it 'has a name' do
        expect(player.name).to eq "Joe"
      end
    end
  end
end
