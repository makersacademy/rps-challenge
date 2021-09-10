require 'game'

describe Game do
    subject(:game) { described_class.new(player) }
    let(:player) { double :player }
    #let(:random) { "Rock" }
    
    it 'retrieves the players name' do
        expect(game.player).to eq player
    end 

    it 'shows me my options rock, paper, scissors' do
        expect(game.options).to eq ['rock', 'paper', 'scissors']
    end

    it 'confirms players pick' do
        game.player_chooses('Rock')
        expect(game.human).to eq 'Rock'
    end

    it 'switches the turn' do
        game.player_chooses('Rock')
        expect(game.current_turn).to eq false
    end

    ####not the best test but move on we shall###
    it 'displays the random pick' do
        expect(game.opponent_pick).to be_kind_of(String)
    end   

    it 'shows the game logic and how a point is scored' do
        human = "rock"
        comp = "scissors"
        expect(game.logic(human,comp)).to eq "You won!"
    end

    it 'shows the score after 1 hand is played' do
        human = "rock"
        comp = "scissors"
        expect { game.logic(human,comp) }.to change { game.human_score }.by(1)
    end

    it 'records a draw if both are picked at the same time' do
        human = "rock"
        comp = "rock"
        expect(game.logic(human,comp)).to eq "Draw! No point awarded"
    end

    it 'shows a game over message' do
        human = "rock"
        comp = "scissors"
        5.times {game.logic(human,comp)}
        expect(game.game_over).to eq "Game Over!"
    end

    # it 'give the player an option to play again' do
    # end    

end