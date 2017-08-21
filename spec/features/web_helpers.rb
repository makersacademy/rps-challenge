def sign_in_and_play
  visit '/'
  fill_in('Player', with: 'Stephen')
  click_button('Submit')
end
