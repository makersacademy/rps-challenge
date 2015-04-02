require 'capybara/rspec'

feature 'Playing rock, paper scissors' do
  scenario 'Rock beats scissors' do
    player1 = Player.new "Bob"
    player2 = Player.new "John"
    game = Game.new player1, player2
    game.player1.chose :rock
    game.player2.chose :scissors
    expect(game.player1).to be_win
  end
end
