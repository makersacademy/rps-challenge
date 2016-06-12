require 'game'

describe Game do
	subject(:single_player_game) {described_class.new(player1,computer)}
	subject(:multi_player_game) {described_class.new(player1, player2)}
	let(:player1) {double :player, add_points: ()}
	let(:computer) {double :computer}


	context 'Single Player game' do
		
		describe '#player1' do
			it 'returns player1' do
				expect(single_player_game.player1).to eq player1
			end
		end
		
		describe '#player2' do
			it 'returns player2' do
				expect(single_player_game.player2).to eq computer
			end
		end

		describe '#player1_choice' do
			it 'returns player1s choice' do
				expect(single_player_game.player1_select('rock')).to eq :rock
			end
		end

		describe '#player2_choice' do
			it 'returns computers choice' do
				expect(single_player_game.player2_select('paper')).to eq :paper
			end
		end

		describe '#winner' do
			it 'returns the winner as computer' do
				single_player_game.player1_select('rock')
				single_player_game.player2_select('paper')
				expect(single_player_game.winner).to eq computer
			end
			it 'returns the winner as player 1' do
				single_player_game.player1_select('scissors')
				single_player_game.player2_select('paper')
				expect(single_player_game.winner).to eq player1
			end
			it 'returns no winner when a draw' do
				single_player_game.player1_select('paper')
				single_player_game.player2_select('paper')
				expect(single_player_game.winner).to eq nil
			end
		end

		describe '#update_score' do
			it 'adds points to player1s score' do
				single_player_game.player1_select('scissors')
				single_player_game.player2_select('paper')
				expect(player1).to receive(:add_points)
				single_player_game.update_score
			end
		end

	end

end
