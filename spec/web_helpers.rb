def sign_in_and_play
  visit('/')
  fill_in('name', with: 'Mew')
  click_button("submit")
end
