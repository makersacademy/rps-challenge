
# kind of like a before each for an Rspec
def get_started
visit('/')
fill_in :player_1_name, with: 'Dave'
click_button 'Submit'
end 
