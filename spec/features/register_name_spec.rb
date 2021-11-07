feature 'See name in lights' do 
    scenario 'register name before playing' do
        visit('/')
        fill_in :player_name, with: 'Blessing'
        click_button 'Submit'
        save_and_open_page
        expect(page).to have_content 'Welcome Blessing'
    end
end 