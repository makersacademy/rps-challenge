require 'game'

describe Game do
	let(:sam) { double :player_1 }
	let(:dan) { double :player_2 }
	subject(:game) { Game.new(sam, dan) }
	before(:all) do
		Game.game = nil
	end

	describe '#self.game=' do
		it 'returns instance of game' do
			Game.game = game
			expect(Game.game).to eq game
		end
	end

	describe '#players' do
		it 'returns all Player instances as array' do
			expect(game.players).to be_a Array
		end
	end

	describe '#player_1' do
		it 'returns Player instance' do
			expect(game.player_1).to be_a Player
		end
		it 'returns player_1 instance' do
			expect(game.player_1.name).to eq sam
		end
	end

	describe '#player_2' do
		it 'returns Player instance' do
			expect(game.player_2).to be_a Player
		end
		it 'returns player_2 instance' do
			expect(game.player_2.name).to eq dan
		end
		it 'Single player game sets up Computer as opposition' do
			single_player = Game.new(sam)
			expect(single_player.player_2.name).to eq "Computer"
		end
	end

	describe '#play' do
		it 'expects a weapon as argument' do
			expect(game).to respond_to(:play).with(1).argument
		end	
		it 'returns result of match as symbol' do
			expect(game.play("rock")).to eq(:win).or eq(:draw).or eq(:lose)
		end
		it 'raise error if player_weapon is not a valid weapon' do
			expect { game.play("pistol") }.to raise_error ArgumentError
		end
	end

end