feature "Game Play Options" do
    scenario "show weapons" do
        register_and_play
        expect(page).to have_content('Rock')
        expect(page).to have_content('Paper')
        expect(page).to have_content('Scissors')
    end

    scenario 'choose a weapon' do
        register_and_play
        click_button 'Rock'
        expect(page).to have_content 'Your chooice: Rock'
        expect(page).to have_button 'Paper'
        expect(page).to have_button 'Scissors'
    end
end