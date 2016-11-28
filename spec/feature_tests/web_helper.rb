
def sign_in_and_play
  visit('/')
  fill_in('human_player1', with:'Jack Kelly')
  click_button('submit')
  select('Rock', from: 'choices')
  click_button('Okay!')
end

def sign_in
   visit('/')
   fill_in('human_player1', with:'Jack Kelly')
   click_button('submit')
end

def load_home_page
  visit('/')
end
