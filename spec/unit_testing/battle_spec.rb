require 'battle'

describe Battle do 
    let(:player) { double :name => PLAYER_NAME, :move=> PLAYER_MOVE }
    let(:game){ Battle.new(player)}
    

    it 'on initialize takes the player object' do
        expect(game.player.name).to eql(PLAYER_NAME)
    end

    it 'should select a random move, pearl, from the array of moves' do 
        srand(4)
        expect(game.opponent_move).to eql('pearl')
    end


    it 'should select a random move, steven, from the array of moves' do 
        srand(5)
        expect(game.opponent_move).to eql('steven')
    end
end