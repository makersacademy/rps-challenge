feature 'Picking Weapon' do
    scenario 'to choose weapon against CPU' do
        visit ('/')
        fill_in :player_1, with: 'Player'
        click_button 'Submit'
        click_button 'rock'
        expect(page).to have_content 'You chose rock'
    end
end