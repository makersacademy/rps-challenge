feature 'User enters a choice' do
    scenario 'rock, paper or scissors' do
        #setup
        visit'/game'
        #exercise
        fill_in 'input', with: 'Rock'
        click_on 'submit'
        save_and_open_page
        #verify
        expect(page).to have_content('You chose: Rock')
    end
end
