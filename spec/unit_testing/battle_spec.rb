require 'battle'

describe Battle do 
    let(:player) { double :name => PLAYER_NAME, :move=> PLAYER_MOVE }
    let(:game){ Battle.new(player)}

    it 'on initialize takes the player object' do
        expect(game.player.name).to eql(PLAYER_NAME)
    end

    it 'should select a random move from the array of moves' do 
    end
end