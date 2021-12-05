def sign_in_and_play
  visit('/')
  fill_in('name_1', with: 'Titus')
  fill_in('name_2', with: 'Chang')
  click_button('Submit')
end
