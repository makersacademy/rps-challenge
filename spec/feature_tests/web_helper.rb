
def sign_in_and_play
  visit('/')
  fill_in('human_player1', with:'Jack Kelly')
  fill_in('computer', with:'HAL')
  click_button('submit')
  click_button('ROCK')
end

def sign_in
   visit('/')
   fill_in('human_player1', with:'Jack Kelly')
   fill_in('computer', with:'HAL')
   click_button('submit')
end

def load_home_page
  visit('/')
end
