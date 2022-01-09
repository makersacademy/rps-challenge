feature 'Register name' do
    scenario 'submits their name' do
        register_and_play
        expect(page).to have_content 'Robin vs. Computer'
        expect(page).to have_content 'Welcome to the Rock, Paper, Scissors Game!'
        expect(page).to have_content 'Please select your weapon!'
    end
end

