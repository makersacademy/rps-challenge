require 'game'

describe Game do

  context 'the game will choose a random option' do
    
    let(:computer) { double(:Computer, name: "Computer") }
    
    let(:player) { double(:Player, name: "Ed") }
    
    let(:game) { Game.new(computer, player) }

    it 'inits with 2 players' do
      expect(game.players.length).to eq 2
    end

  end

end