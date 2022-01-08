feature 'Register name' do
    scenario 'submits their name' do
        visit('/')
        fill_in :player_name, with: 'Robin'
        click_button 'Submit'
        expect(page).to have_content 'Hi Robin! Welcome to the Rock, Paper, Scissors Game!'
    end
end

