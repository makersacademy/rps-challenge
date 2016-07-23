require 'rps_game'

describe Rps_game do
  subject(:rps_game) { described_class.new }
  let(:player_1) {double(:player_1)}

  describe 'returns player name' do
    context 'player_1' do
      it 'returns player_1 name' do
        allow(player_1).to receive(:name).and_return("Alex")
        expect(rps_game.player_1).to eq "Alex"
      end
    end
  end

end
