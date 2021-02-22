feature 'selecting rock, paper, scissors' do
    scenario 'can select rock, paper or scissors' do
        add_name_and_play
        expect(page).to have_content 'Joanna is ready to play Rock, Paper, Scissors!'
        expect(page).to have_content 'Please choose rock, paper or scissors:'
        expect(page).to have_button 'GO!'
    end
end
