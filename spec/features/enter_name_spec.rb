feature 'Entering name' do 
    scenario 'Entering a name and being able to see it' do 
        visit ('/')
        fill_in :player_name, with: 'Meg'
        click_button 'Submit'
        expect(page).to have_content 'Meg'
    end 
end 