require 'player'

RSpec.describe Player do 

  let(:player) { Player.new("Bob") }

  describe 'instance of player initialized ' do 
  
    it 'initialized name with argument passed' do 
      expect(player.name).to eq 'Bob'
    end 

  end 

end 