require 'game'

describe Game do 

let(:game) {Game.new}
let(:player) {double :player, weapon: :Scissors}
let(:computer) {double :computer}
let(:player1) {double :player, weapon: :Paper}

	
	it "can add a player" do
		game.add_player(player)
		expect(game.players).to eq [player]
	end

	it "knows that rock beats scissors" do
		game.add_player(computer)
		game.add_player(player)
		allow(computer).to receive(:weapon).and_return(:Rock)
		expect(game.winner).to eq computer
	end

	it "knows that scissors beats paper" do
		game.add_player(computer)
		game.add_player(player)
		allow(computer).to receive(:weapon).and_return(:Paper)
		expect(game.winner).to eq player
	end

	it "knows that paper beats rock" do 
		game.add_player(computer)
		game.add_player(player1)
		allow(computer).to receive(:weapon).and_return(:Rock)
		expect(game.winner).to eq player1
	end

	it 'knows when there is a draw' do 
		game.add_player(computer)
		game.add_player(player)
		allow(computer).to receive(:weapon).and_return(:Scissors)
		expect(game.winner).to eq nil
	end


end