require 'rps'

describe RPS do

  let(:computer) { double(:Computer, name: "Computer") }
  let(:player) { double(:Player, name: "Ed") }
  let(:rps) { RPS.current_game }
  
  before do
    RPS.new_game(computer, player)
  end

  context 'the game will choose a random option' do
    
    it 'inits with 2 players' do
      expect(rps.players.length).to eq 2
    end

  end

  context 'a winner will be declared' do
    
    it 'user: Rock computer: Paper' do

    end

  end

end