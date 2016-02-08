
def sign_in_and_play
  visit('/')
  fill_in('player_one', with: 'S.Z.')
  click_button('play')
end
