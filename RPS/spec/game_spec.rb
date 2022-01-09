require 'game'

describe Game do
    subject(:game) { described_class.new(options) }
    let(:options) { {"player_name" => "Vanessa", "player_shape" => :rock, "opponent_shape" => :rock} }

    describe '#player_name' do
      it 'returns player name' do
        expect(game.player_name).to eq 'Vanessa'
      end
    end

    describe '#player_shape' do
      it 'returns player shape' do
        expect(game.player_shape).to eq :rock
      end
    end

    describe '#opponent_shape' do
      it 'returns opponent shape' do
        expect(game.opponent_shape).to eq :rock
      end
    end
end