require 'game'

describe Game do
  subject(:game) { described_class.new(args) }
  let(:args) {
    {"player_name" => "Steve"}
  }

  describe '#player_name' do
    it 'returns payer name' do
      expect(game.player_name).to eq 'Steve'
    end
  end


end
