require 'game'
require 'pry'

describe Game do

  subject(:player) { double :user, :player_name => "Irina" }

  it 'is created with a human player' do
    allow(player).to receive(:player_name).and_return("Irina")
    game = Game.create(player)
    expect(game).to be_an_instance_of(Game)
  end

  it 'can have a user choose something' do
    game = Game.create(player)
    expect(player).to receive(:make_a_choice)
    game.user_chooses("Rock")
  end

  it 'if user chooses Rock, computer chooses Scissors, user wins' do
    game = Game.create(player) # I am creating an instance with a computer that's not doubled
    allow(player).to receive(:choice).and_return("Rock") # Which means I can't have it return the result I need
    allow(game).to receive(:computer_choice).and_return("Scissors")
    game.score_game
    expect(game.result).to eq("Win")
  end

  it 'if user chooses Scissors, computer chooses Rock, user loses' do
    game = Game.create(player) # I am creating an instance with a computer that's not doubled
    allow(player).to receive(:choice).and_return("Scissors") # Which means I can't have it return the result I need
    allow(game).to receive(:computer_choice).and_return("Rock")
    game.score_game
    expect(game.result).to eq("Lose")
  end

  it 'if user chooses Scissors, computer chooses Scissors, then it\'s a draw' do
    game = Game.create(player) # I am creating an instance with a computer that's not doubled
    allow(player).to receive(:choice).and_return("Scissors") # Which means I can't have it return the result I need
    allow(game).to receive(:computer_choice).and_return("Scissors")
    game.score_game
    expect(game.result).to eq("Draw")
  end
end
