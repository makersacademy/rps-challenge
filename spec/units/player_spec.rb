require 'player'

describe Player do
  
let (:player) { Player.new('Florence') }

  describe '#name' do
    it 'user enters name' do
      expect(player.name).to eq 'Florence'
    end 
  end 

  describe '#select_move' do
    it 'user selects a move' do
      player.select_move 'ROCK'
      expect(player.move).to eq 'ROCK'
    end 
  end 

end 

