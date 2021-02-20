feature 'entering player name' do
    scenario 'can enter name on home page' do
       add_name_and_play
        expect(page).to have_content 'Joanna is ready to play Rock, Paper, Scissors!'
    end
end