require 'rps'

describe RPS do
    game = RPS.new("scissors")

    context 'the class has the functions we expect' do 
        it 'responds to game' do
          expect(game).to respond_to(:move1)
        end

      it 'responds to game round 2' do
        expect(game).to respond_to(:game_round_2)
      end
      it 'responds to game results' do
        expect(game).to respond_to(:game_results)
      end

    end

   context 'expects the game to return the correct result' do
    it 'Should allow player2 to win' do
      game.stub(:move2).and_return('rock')
      expect(game.game_results).to eq("Player 2 wins")
    end
    end 

end