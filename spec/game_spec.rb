require 'game'
require 'player'

describe Game do
    
    # let (:player1) {double :player}
    subject(:game) {described_class.new("bob")}
    let (:computer) {double :computer}

    it 'creates a Player instance when initialised' do
        expect(game.player1.name).to eq "bob"
    end

    it 'creates a Computer instance when initialised' do
        game.instance_variable_set(:@computer, computer)
        expect(game.computer).to eq computer
    end

    
end
