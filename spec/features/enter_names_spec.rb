feature 'submitting names' do
    scenario 'player1 and player2 entering names and submit' do
        sign_in_and_play
        expect(page).to have_content 'Tanil vs Computer'
    end
end