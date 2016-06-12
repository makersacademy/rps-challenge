def sign_in_and_play
  visit('/')
  click_button('Single Player')
  fill_in('name', with: 'Marlon')
  click_button('Submit')
end

def multi_play_sign_in
  visit('/')
  click_button('Multiplayer')
  fill_in('name_1', with: 'Marlon')
  fill_in('name_2', with: 'Fred')
  click_button('Submit')
end
