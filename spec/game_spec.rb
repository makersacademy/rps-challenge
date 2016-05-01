require 'game'

describe Game do
	subject(:game) { Game.new(player_1, player_2, 2, true) }
	subject(:game_extended) { Game.new(player_1, player_2, 2, false) }
	let(:player_1) {  spy(:player, name: 'Omar', choice: :rock) }
	let(:player_2) {  spy(:player, name: 'Laura', choice: :scissors) }

	describe 'Initialization:' do
		it 'Retrieves the first player' do
			expect(game.player_1).to eq player_1
		end

		it 'Retrieves the second player' do
			expect(game.player_2).to eq player_2
		end
	end

	describe '#start' do
		context 'Standard mode: ' do
			it 'Player 1 wins' do
				game.start
				expect(game.start).to eq 'The winner is Omar'
			end

			it 'Player 2 wins' do
				allow(player_1).to receive(:choice){:paper}
				allow(player_2).to receive(:choice){:scissors}
				expect(game.start).to eq 'The winner is Laura'
			end

			it 'Tie' do
				allow(player_1).to receive(:choice){:paper}
				allow(player_2).to receive(:choice){:paper}
				expect(game.start).to eq 'Tie'
			end
		end

		context 'Extended mode: ' do
			it 'Player 1 wins' do
				allow(player_2).to receive(:choice){:lizard}
				expect(game_extended.start).to eq 'The winner is Omar'
			end

			it 'Player 2 wins' do
				allow(player_1).to receive(:choice){:lizard}
				allow(player_2).to receive(:choice){:scissors}
				expect(game_extended.start).to eq 'The winner is Laura'
			end

			it 'Tie' do
				allow(player_1).to receive(:choice){:lizard}
				allow(player_2).to receive(:choice){:lizard}
				expect(game_extended.start).to eq 'Tie'
			end
		end
	end

	describe '.create' do
		it 'creates a new game in standard mode' do
			expect(Game.create(player_1, player_2, 2, true)).to be_a Game
			expect(Game.create(player_1, player_2, 2, true).game_mode).to be true
		end

		it 'creates a new game in extended mode' do
			expect(Game.create(player_1, player_2, 2, false)).to be_a Game
			expect(Game.create(player_1, player_2, 2, false).game_mode).to be false
		end		  	
	end

	describe '.instance' do
		it 'returns the created game' do
			instance = Game.create(player_1, player_2, 2, true)
			expect(Game.instance).to eq instance
		end
	end
end