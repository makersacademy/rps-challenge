def sign_in_and_play(name)
  visit '/'
  fill_in('player_name', with: name)
  click_button('submit')
end
