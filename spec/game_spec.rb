require 'game'

describe Game do

    before do
        @game = Game.new("Evie")
        allow(@game).to receive(:pick_choice).and_return("Rock")
    end

    it 'checks if the game picks a random choice' do
        expect(@game.pick_choice).to eq("Rock")
    end

    it 'expects the correct winner according to the rules' do
        @game.pick_choice
        expect(@game.who_wins("Rock", "Rock")).to eq("It's a draw.")
    end
end