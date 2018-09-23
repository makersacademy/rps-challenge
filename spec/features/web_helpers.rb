def make_computer_choice(choice)
  game = Game.instance
  game.computer.choose(choice)
end

def make_player_choice(choice)
  choose(choice)
  click_button('Go!')
end

def sign_in_and_play
  visit('/')
  fill_in(:name, with: 'Jon')
  click_button('Go!')
end
