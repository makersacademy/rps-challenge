require 'battle'

describe Battle do 
    let(:player) { double :name => PLAYER_NAME }
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

    describe '#draw?' do 
        it 'should have a guard statement that returns an string of draw if its a draw' do
            allow(player).to receive(:move).and_return('pearl')
            srand(4) ##setting to Pearl
            expect(game.draw?).to eql("#{PLAYER_NAME} its a draw!") 
        end
    end

    context 'player wins!' do 
        before {
            allow(player).to receive(:move).and_return('amythyst')
            srand(4)
            }

        describe '#player_win' do 
        it 'returns true if @opponent_move is a value within the array of the key pair' do 
            expect(game.player_win?).to eql("#{PLAYER_NAME} won!")
        end
    end

    describe '#play' do 
        before {
            game.play
        }
        it 'will run through the required method calls and out put a winner or looser' do 
            expect(game.outcome).to eql("#{PLAYER_NAME} won!")
        end
    end
  end
end