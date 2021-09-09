require 'game'

describe Game do
    subject(:game) { described_class.new(player) }
    let(:player) { double :player }
    
    it 'retrieves the players name' do
        expect(game.player).to eq player
    end 

    it 'shows me my options rock, paper, scissors' do
        expect(game.options).to eq ['Rock', 'Paper', 'Scissors']
    end

    it 'confirms players pick' do
        game.player_chooses('Rock')
        expect(game.player_pick).to eq 'Rock'
    end

    it 'switches the turn' do
        game.player_chooses('Rock')
        #game.switch_turns
        expect(game.current_turn).to eq false
    end

end