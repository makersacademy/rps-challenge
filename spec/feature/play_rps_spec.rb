require 'capybara/rpsec'

feature 'a player can play a game of rock paper scissors' do

  scenario 'by signing up for a game with their name' do
    player = Player.new("Rob")
    expect(player.name).to eq "Rob"
  end

  scenario 'the player can make a move and win or loose' do
    player = Player.new("Rob")
    game = Game.new
    computer = Computer.new
    expect(game.play(player, :rock, computer, computer.move)).to eq :win || :lose
  end

end
