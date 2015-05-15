require 'game'

feature 'I can play against a computer'do
  scenario 'Computer selects at random' do
    game = Game.new
    expect(game).to respond_to :computer_choice
  end
  scenario 'Player can make a choice'do
    game = Game.new
    expect(game).to respond_to :player_choice
  end
  scenario 'A winner is decide based on game logic'do
    game = Game.new
    expect(game).to respond_to( :result).with(2).arguments
  end
end
