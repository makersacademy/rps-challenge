
require 'player'

describe Player do

  subject(:player_name) { described_class.new("Apoorva") }


  describe '#initialization' do
	  it 'returns player name' do
	    expect(player_name.name).to eq("Apoorva")
	   end
   end
 end
