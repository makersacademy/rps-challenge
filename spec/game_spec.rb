require 'game'

describe Game do 

let(:game) {Game.new(player)}
let(:player) {double :player, name: "Carrie"}

	
	it "has a player" do
		expect(game.player.name).to eq "Carrie"
	end

	it "knows that rock beats scissors" do 
	end

	it "knows that scissors beats paper" do
	end

	it "knows that paper beats rock" do 
	end


end