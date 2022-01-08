require 'player'
describe Player do
    let(:player) {Player.new('Robin')}

    describe 'player_name' do
        it 'returns the player name' do
            expect(player.name).to eq 'Robin'
        end
    end
end