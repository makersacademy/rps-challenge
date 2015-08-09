require_relative '../lib/game'

describe Game do 
	let(:player_1_scissors) {double :player, :chosen_object => "Scissors", :name => "Alex"}
	let(:player_2_scissors) {double :player, :chosen_object => "Scissors"}
	let(:game_tie) {Game.new player_1_scissors,player_2_scissors}
	let(:player_2_paper) {double :player, :chosen_object => "Paper"}
	let(:game_player1_win) {Game.new player_1_scissors, player_2_paper}
	let(:player_2_rock) {double :player, :chosen_object => "Rock", :name => "Anna"}
	let(:game_player2_win) {Game.new player_1_scissors,player_2_rock}

	
	it 'says its a tie if both players put in the same answer' do 
		expect(game_tie.winner).to eq "It's a tie!"
	end 

	it 'says that player 1 won if it won' do
		expect(game_player1_win.winner).to eq "Alex, you win!"
	end 

	it 'says that player 2 won if it won' do
		expect(game_player2_win.winner).to eq "Anna, you win!"
	end 
end 