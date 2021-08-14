require 'game'

describe Game do
    game = Game.new("Apps")
    
    context 'it expects the game to have these methods' do
    it 'expects play game to exit' do
        expect(game).to respond_to(:play_game)
    end

    it 'expects Player1 to exist' do
        expect(game).to respond_to(:player1)
    end

    it 'expects Player2 to exist' do
        expect(game).to respond_to(:player2)
    end

end
end