require 'rps'

describe RPS do

  let(:computer) { double(:Computer, name: "Computer") }
  let(:player) { double(:Player, name: "Ed") }

  context 'the game will choose a random option' do
    
    before do
      RPS.new_game(computer, player) 
    end

    it 'inits with 2 players' do
      expect(RPS.current_game.length).to eq 2
    end

  end

end