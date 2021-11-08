feature 'Before the game' do 
    scenario 'register name before playing' do
        visit('/')
        fill_in :player_name, with: 'Blessing'
        click_button 'Submit'
    end
end 