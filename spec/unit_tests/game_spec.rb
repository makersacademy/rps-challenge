require 'player'
require 'game'

describe Game do
  let(:player_1) {double("Player", name: 'Farhaan')}
  subject(:game) {Game.new(player_1)}
  let(:input) {"rock"}
  
  it 'stores the names of the player 1' do
    expect(game.player1).to eq 'Farhaan' 
  end

  it 'default name of player 2 is Computer' do
    expect(game.player2).to eq 'Computer' 
  end

  describe '#create' do
    it 'creates a new instance of a game which can be accessed' do
      start_game = Game.create(player_1)
      expect(Game.instance).to eq start_game
    end

  end 

  describe '#computer_choice' do
    it 'randomly chooses Rock, paper etc' do
      allow(game).to receive(:computer_choice) {'rock'} #stub
      expect(game.computer_choice).to eq "rock"
    end
  end

  describe '#player1_choice' do
    it 'gets the player 1 choice' do 
      expect(game.player1_choice(input)).to eq "rock"
    end
  end

  describe '#result' do
    it 'expects to return win/lose or tie' do
      game.player1_choice('rock')
      game.player2_choice('rock')
      expect(game.result).to eq 'tie'
    end
  end

end