def register_and_play
  visit '/'
  fill_in('player1_name', with: 'Iryna')
  click_button('Submit')
end

def make_choice_player1
  register_and_play
  click_button('Rock')
end