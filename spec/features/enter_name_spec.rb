feature 'register their name before playing' do 
    scenario 'the player is asked to enter their name' do 
        visit('/')
        expect(page).to have_content 'Please enter your name'
    end
    scenario 'the player enters their name' do
        visit('/')
        fill_in :player_name, with: 'Raf'
        click_button 'Submit Name'
        expect(page).to have_current_path('/game')
    end
end