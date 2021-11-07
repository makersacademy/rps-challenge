feature 'Playing the game' do 
    scenario 'presented choices: rock, paper or scissors' do
        visit('/')
        fill_in :player_name, with: 'Blessing'
        click_button 'Submit'
        visit('/play')
        expect(page).to have_content 'Choose one from: Rock, Paper, Scissors'
    end
end 