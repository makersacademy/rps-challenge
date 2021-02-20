def sign_in_and_play
  visit "/"
  fill_in('name', with: 'Ian')
  click_button("Let's go!")
end
