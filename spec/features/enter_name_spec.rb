feature 'Enter names' do
    scenario 'submitting names' do
        visit ('/')
        fill_in :player_1, with: 'Player'
        click_button 'Submit'
        expect(page).to have_content 'Ok Player choose your weapon:'
    end
end