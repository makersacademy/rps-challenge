require 'game'

describe Game do

	subject(:game) { described_class.new(player)}
	let(:player) { double(:player) }
  
  it 'starts with a player' do
    expect(game.player).to eq player
  end

  context '#move' do
    it 'sets the choice' do
    	game.move("Rock")
    	expect(game.choice).to eq "Rock"
    end
  end

  context '#computer_move' do
  	it 'sets the computers choice' do
  		game.computer_move
  		expect(Game::CHOICES).to include game.computer_choice
  	end
  end


end