feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1, with: 'Jade'
        fill_in :player_2, with: 'Stu'
        click_button 'Submit'
        expect(page).to have_content 'Jade vs. Stu'
    end
end