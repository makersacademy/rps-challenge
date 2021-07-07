feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1, with: 'Khan'
        fill_in :player_option, with: 'rock'
        click_button 'Submit'
        expect(page).to have_content 'Khan vs. CPU'
    end
end