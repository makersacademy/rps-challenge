PLAYER_NAME = 'PERIDOT'
<<<<<<< HEAD
PLAYER_MOVE = 'garnet'
=======
>>>>>>> 3472f8feccd9780c78b88c9dd21e34c55ec28a47

def fill_in_name
    visit('/')
    fill_in('player_name', :with => PLAYER_NAME)
    click_button 'Play!'
end
