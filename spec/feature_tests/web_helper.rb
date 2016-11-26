

def sign_in
   visit('/')
   fill_in('human_player1', with:'Jack Kelly')
   click_button('submit')
end
