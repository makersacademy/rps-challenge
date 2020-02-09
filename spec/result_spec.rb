require './lib/result'

describe Result do

    subject(:game1) { Result.new('Scissors', 'Rock', 'Toby') }
    subject(:game2) { Result.new('Paper', 'Scissors', 'Toby') }
    subject(:game3) { Result.new('Rock', 'Paper', 'Toby') }
    subject(:game4) { Result.new('Rock', 'Rock', 'Toby') }
    subject(:game5) { Result.new('Rock', 'Scissors', 'Toby') }

    it 'rock beats scissors' do
        expect(game1.run_game).to eq "Rock beats scissors - AMAZING YOU WON!! Well done Toby!" 
    end

    it 'scissors beats paper' do
        expect(game2.run_game).to eq "Scissors beats paper - AMAZING YOU WON!! Well done Toby!" 
    end

    it 'paper beats rock' do
        expect(game3.run_game).to eq "Paper beats rock - AMAZING YOU WON!! Well done Toby!" 
    end

    it 'produces a tie result' do
        expect(game4.run_game).to eq result = "Sorry Toby, it's a tie!"
    end

    it 'produces a loss result' do
        expect(game5.run_game).to eq result = "Unlucky Toby! You lost!"
    end

end
