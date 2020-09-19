feature 'Register name for game' do
    scenario 'Input name for register will show name' do
        visit('/')
        fill_in 'name', with: 'Johnny'
        click_button 'Submit'
        expect(page).to have_content('Johnny is registered as a player')
    end
end