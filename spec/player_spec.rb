require 'player'

describe Player do
  let(:app) {double :app, player_name: 'Binky'}
  subject(:player) {described_class.new(app.player_name)}
  context 'When the player initializes' do
    describe '#initialize' do
      it 'receives the player name from the controller' do
        expect(player.name).to eq 'Binky'
      end
    end
  end
end
