require 'player'

describe Player do
  subject(:player) { described_class.new("Joe", rock) }

  let(:rock) { double(:rock) }

  describe '#new' do
    context 'when initialised' do
      it 'has a name' do
        expect(player.name).to eq "Joe"
      end

      it 'has a weapon' do
        expect(player.weapon).to eq rock
      end
    end
  end
end
