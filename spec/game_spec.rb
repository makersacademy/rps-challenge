require 'game'

describe Game do 
	let(:player_1) {double :player, name: "dan", move: :paper, score: 2, win: nil}
	let(:player_2) {double :player, name: "ed", move: :rock, score: 1, win:nil}
	subject(:game) {described_class.new(player_1,player_2)}
	moves = [:rock, :paper, :scissors, :spock, :lizard]
	
	describe '#initialise' do
		it 'assings player one to player_1' do
			expect(game.player_1).to eq player_1
		end
		it 'assings player two to player_2' do
			expect(game.player_2).to eq player_2
		end
	end

	describe '#player_1_name' do
		it 'returns players 1 name' do
			expect(game.player_1_name).to eq "dan"
		end
	end

	describe '#player_2_name' do
		it 'returns player 2 name' do 
			expect(game.player_2_name).to eq "ed"
		end
	end

	describe '#player_1_name' do
		it 'returns players 1 name' do
			expect(game.player_1_name).to eq "dan"
		end
	end

	describe '#player_1_score' do
		it 'returns players 1 score' do
			expect(game.player_1_score).to eq 2
		end
	end

	describe '#player_2_score' do
		it 'returns player 2 score' do 
			expect(game.player_2_score).to eq 1
		end
	end

	describe '#log_move' do
		it 'logs a players move' do
			expect(player_1).to receive(:log)
			game.log_move(player_1, :move)
		end
	end

	describe '#computer?' do
		it 'determines if the current player is the computer' do
			expect(game.current_player_computer?).to eq false 
		end
	end

	describe '#finished?' do
		it 'determines if the game is finished' do
			2.times { game.switch}
			expect(game.finished?).to eq true 
		end
	end

	describe '#winners_name' do
		it 'determines which player should win' do
			expect(game.winners_name).to eq "dan"
		end
	end

	describe '#winners_move' do
		it 'returns the winners move' do
			expect(game.winners_move).to eq "paper"
		end
	end

	describe '#switch' do
		it 'switches the current player' do
			expect(game.switch).to eq player_2
		end
		it 'calls add_count' do
			game.switch
			expect(game.count).to eq 1
		end
	end
end
