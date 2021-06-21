feature 'enter names' do
    scenario 'player enter their name' do
        one_player
        click_button "Let's play!"
        expect(page).to have_content 'Usna'
    end
end

feature 'Player chooses their weapon' do
    scenario 'player selects rock, paper or scissor' do
        one_player
        choose "move", option: "Paper"
        click_button 'Enter move'
        expect(page).to have_content "Usna played Paper"
    end
end