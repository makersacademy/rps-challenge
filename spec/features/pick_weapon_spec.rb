feature 'Picking Weapon' do
    scenario 'to choose weapon against CPU' do
        visit ('/')
        fill_in :player_1, with: 'Player'
        click_button 'Submit'
        click_button 'ROCK'
        expect(page).to have_content 'You chose ROCK'
    end
end