require 'player'

describe Player do 

  subject(:player)  { described_class.new("Player 1")}

  describe '#name' do
  	it 'returns the player\'s name' do
 	  expect(player.name).to eq "Player 1"
  	end 
  end
	
end