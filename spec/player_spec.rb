require 'player'

describe Player do
	let(:player) { Player.new('Sam') }
  
	describe '#player name' do
		it 'returns the player name' do
			expect(player.name).to eq('Sam')
		end
	end

	describe '#player move' do
	  it 'player selects move' do
		  #player.select_move 'Rock'
			expect(player.select_move('Rock')).to eq 'Rock'
		end
	end
end