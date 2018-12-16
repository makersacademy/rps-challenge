PLAYER_NAME = 'PERIDOT'

PLAYER_MOVE = 'garnet'

def fill_in_name
    visit('/')
    fill_in('player_name', :with => PLAYER_NAME)
    click_button 'Play!'
end
