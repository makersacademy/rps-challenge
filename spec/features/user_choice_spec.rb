feature 'User enters a choice' do
    scenario 'submit one of rock, paper or scissors' do
        #setup
        visit'/'
        #exercise
        click_button 'Play'
        #verify
        expect(page).to have_content('Rock')
    end
end
