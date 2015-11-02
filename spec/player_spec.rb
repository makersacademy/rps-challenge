require 'player'

describe Player do

	let(:character) { double :character }
	subject(:player) { Player.new(character) }
  
	describe '#initialize' do
		it 'returns the symbol chosen' do
		  expect(player.character).to eq character
		end
	end
end