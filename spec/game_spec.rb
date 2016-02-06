require 'game'

describe Game do
  let(:player) {double :player}
  before do
    allow(player).to receive(:name) {'Pinky'}
  end
  subject(:game) {described_class.new(player)}
  context 'When the game initializes' do
    describe '#initialize' do
      it 'stores the player object' do
        expect(game.player_name).to eq 'Pinky'
      end
    end
  end
end
