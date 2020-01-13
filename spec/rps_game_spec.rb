require 'rps_game'

describe RPSGame do 
    subject(:game) { described_class.new(player_1, player_2) } 
    let(:player_1) { double :player }
    let(:player_2) { double :player }

    describe 'initialize class' do
        it 'create an instance' do
        expect(game).to be_a RPSGame
        end
    end
    
end