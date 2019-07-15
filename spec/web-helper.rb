
def enter_name_and_play
  visit('/')
  fill_in 'name', with: 'Harry'
  click_button('Play!')
end