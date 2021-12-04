feature 'Enter names' do
    scenario 'submitting names' do
        # sign_in_and_play
        # save_and_open_page
        visit ('/')
        fill_in :player_1, with: 'Player 1'
        # fill_in :player_2, with: 'Player 2'
        click_button 'Submit'
        expect(page).to have_content 'Player 1 vs. Computer'
    end
end