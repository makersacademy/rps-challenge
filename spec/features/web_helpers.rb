
def sign_in_and_play
  visit('/')
  fill_in('name1', with: 'Kate')
  click_button('Play')
end
