require 'game'

describe Game do 
    let(:player) { double :name => PLAYER_NAME, :move=> PLAYER_MOVE }
    let(:game){ Game.new(player)}

    it 'on initialize takes the player object' do
        expect(player.name).to eql(PLAYER_NAME)
    end
end