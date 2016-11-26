

def sign_in
   visit('/')
   fill_in('human_player1', with:'Jack Kelly')
   fill_in('computer', with:'HAL')
   click_button('submit')
end
