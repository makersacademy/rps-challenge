require 'game'
require 'player'
require 'computer'

describe Game do 
let(:weapons){double(:weapons)}
let(:player){double(:player)}
let(:player2){double(:player2)}
let(:computer){double(:computer, :play => "Paper")}
subject(:game){described_class.new(player, player2)}
subject(:game2){described_class.new(player)}

 
	it 'does not return an opponent for player 2 if computer selected' do	
	expect(player2).to_not receive(:selection)
	(game2.opponent)
	end

	it 'returns the winning result of the game rock vs scissors' do 
  allow(game).to receive(:computer) {:scissors}
  allow(game).to receive(:player_choice) {"Rock"}
	expect(game.result).to eq :win
	end

	it 'returns the winning result of the game paper vs rock' do 
  allow(game).to receive(:computer) {:rock}
  allow(game).to receive(:player_choice) {"Paper"}
	expect(game.result).to eq :win
	end

	it 'returns the winning result of the game scissors vs paper' do 
  allow(game).to receive(:computer) {:paper}
  allow(game).to receive(:player_choice) {"Scissors"}
	expect(game.result).to eq :win
	end

	it 'returns a draw from the game rock vs rock' do 
  allow(game).to receive(:computer) {:rock}
  allow(game).to receive(:player_choice) {"Rock"}
	expect(game.result).to eq :draw
	end

	it 'returns a draw from the game paper vs paper' do 
  allow(game).to receive(:computer) {:paper}
  allow(game).to receive(:player_choice) {"Paper"}
	expect(game.result).to eq :draw
	end

	it 'returns the winning result of the game scissors vs scissors' do 
  allow(game).to receive(:computer) {:scissors}
  allow(game).to receive(:player_choice) {"Scissors"}
	expect(game.result).to eq :draw
	end

	it 'returns a loss from the game scissors vs rock' do 
  allow(game).to receive(:computer) {:rock}
  allow(game).to receive(:player_choice) {"Scissors"}
	expect(game.result).to eq :lose
	end

	it 'returns a loss from the game rock vs paper' do 
  allow(game).to receive(:computer) {:paper}
  allow(game).to receive(:player_choice) {"Rock"}
	expect(game.result).to eq :lose
	end

	it 'returns the winning result of the game scissors vs rock' do 
  allow(game).to receive(:computer) {:rock}
  allow(game).to receive(:player_choice) {"Scissors"}
	expect(game.result).to eq :lose
	end



end