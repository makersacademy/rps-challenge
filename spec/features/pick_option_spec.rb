feature 'Pick an option' do
    scenario 'select rock' do
        visit('/')
        fill_in :player_1, with: 'Khan'
        fill_in :player_option, with: 'rock'
        click_button 'Submit'
        expect(page).to have_button('rock')
    end

    scenario 'lock in rock' do
        visit('/')
        fill_in :player_1, with: 'Khan'
        fill_in :player_option, with: 'rock'
        click_button 'Submit'
        click_button 'rock'
        expect(page).to have_content 'rock vs cpu'
    end
end