def register_and_play
  visit ('/')
  fill_in :user_name, with: 'Dave'
  click_button('Register')
  click_button('Play')
end
