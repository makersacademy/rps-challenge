require 'player'

RSpec.describe Player do 

  let(:player) { Player.new("Bob") }

  describe 'instance of player initialized ' do 
  
    it 'initialized name with argument passed' do 
      expect(player.name).to eq 'Bob'
    end 

  end 

  describe 'playing a move' do 
  
    it 'player move is set to argument passed in' do 
      player.choose_move('Rock')
      expect(player.move).to eq 'Rock'
    end 
  end 

end
