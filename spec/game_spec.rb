require 'game'

describe Game do 
let(:weapons){double(:weapons)}
let(:player){double(:player)}
let(:player2){double(:player2)}
subject(:game){described_class.new(player, player2)}
subject(:game2){described_class.new(player)}

 
	it 'returns an array of weapons ' do
	expect(game.weapons).to eq ["Rock", "Paper", "Scissors"]
	end


	it 'returns an opponent' do	
	allow(game2.weapons).to receive(:sample) {"Paper"}
	expect(game2.opponent).to eq "Paper"
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