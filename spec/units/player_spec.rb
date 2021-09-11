require 'player'

describe Player do
  
let (:player) { Player.new('Florence') }

  describe '#name' do
    it 'user enters name' do
      expect(player.name).to eq 'Florence'
    end 
  end 

end 