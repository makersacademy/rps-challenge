require './lib/game'
describe Game do
    subject(:game) { Game.new }
    describe "#play" do
        it 'returns rock' do
            srand(67810)
            expect(game.computer_choice).to eq("Rock")
        end
        it 'returns paper' do
            srand(67800)
            expect(game.computer_choice).to eq("Paper")
        end
        it 'returns scissors' do
            srand(67809)
            expect(game.computer_choice).to eq("Scissors")
        end
    end
    describe "#result" do
        before(:each) do
            srand(67810)
            game.computer_choice
        end
        it 'returns win message' do    
            game.player_choice("Paper")
            expect(game.result).to eq("You win!")
        end
        it 'returns draw message' do
            game.player_choice("Rock")
            expect(game.result).to eq("It's a tie!")
        end
        it 'returns lose message' do
            game.player_choice("Scissors")
            expect(game.result).to eq("Computer wins!")
        end
    end
end