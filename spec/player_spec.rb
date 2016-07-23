require 'player'

describe Player do
  subject(:alex) { described_class.new("Alex") }
  let(:player_1) {double(:player_1)}

  describe 'returns player name' do
    context 'player_1' do
      it 'returns player_1 name' do
        expect(alex.name).to eq "Alex"
      end
    end
  end
end
