require 'player'

describe Player do
    player = Player.new("Apps")
    context 'Player class should respond to these' do

        it 'initializes with a name value' do
            expect(player.name).to eq("Apps")
        end
    end
end