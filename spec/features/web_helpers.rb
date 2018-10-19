require_relative '../../lib/game'

def sign_in_and_play
  visit '/'
  fill_in('name', with: 'Caitlin')
  click_button("Submit")
end

def game_is_rock
  options = ['rock', 'paper', 'scissors']
  game = Game.new(options)
  allow(options).to receive(:sample).and_return('rock')
  game.move
end
