require 'game'

describe Game do 

	subject(:game) { described_class.new player}
	let(:player) { double :player }
	let(:game_class) { described_class }


	describe '#initialize' do
		it 'has the player' do
			expect(game.player).to eq player
		end
	end

	describe '.create' do
		it 'creates new instance of Game' do
			expect(game_class.create player).to be_instance_of(Game)
		end
	end

	describe '.load' do
		it 'returns instance of Game' do
			game_class.create player
			expect(game_class.load).to be_instance_of(Game)
		end
	end
end