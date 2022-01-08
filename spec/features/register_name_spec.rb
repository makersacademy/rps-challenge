feature 'Register name' do
    scenario 'submits their name' do
        register_and_play
        expect(page).to have_content 'Hi Robin! Welcome to the Rock, Paper, Scissors Game!'
    end
end

