def register_and_play
  visit('/')
  fill_in(:player1_name, with: 'Jay')
  click_button('Submit')
end

def select_option_rock
  click_button('Play now!')
  select 'rock', from: 'name'
  click_button('Submit')
end
