feature 'register their name before playing' do 
    scenario 'the player is asked to enter their name' do 
        visit('/')
        expect(page).to have_content 'Please enter your name'
    end
    scenario 'the player enters their name and are redirected to the /game page' do
        fill_name_and_submit
        expect(page).to have_current_path('/game')
    end
end