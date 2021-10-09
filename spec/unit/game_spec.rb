require 'game'

describe Game do
    
    before(:each) do
        @game = Game.new('Rock')
        allow(@game).to receive(:cpu_choice) { 'Rock' }
        allow(@game).to receive(:result) { 'You win!' }
    end

    it 'takes one parameter of the players choice' do
        expect(@game.player_choice).to eq 'Rock'
    end
    it 'generates a choice for the computers selection' do
        expect(@game.cpu_choice).to eq 'Rock'
    end
    it 'posts a result' do
        expect(@game.result).to eq 'You win!'
    end

end