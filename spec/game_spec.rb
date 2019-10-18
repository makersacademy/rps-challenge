require 'game'

describe Game do 
    subject(:game) { described_class.new("Josh") }
    describe "#player_name" do 
        it 'returns the player_name' do
            expect(game.player_name).to eq "Josh"
        end 
    end
    describe "#results" do 
        it 'returns result as a draw' do 
            expect(game.calculate_winner('rock', 'rock')).to eq "It was a draw"
        end
        it 'returns result as player win' do 
            expect(game.calculate_winner('rock', 'scissors')).to eq "Josh Wins"
        end
        it 'returns result as computer win' do 
            expect(game.calculate_winner('scissors', 'rock')).to eq "Computer Wins"
        end
    end
end 