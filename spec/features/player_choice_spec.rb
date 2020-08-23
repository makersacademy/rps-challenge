feature 'Player can choose rock, paper, or scissors' do
    scenario 'player chooses rock' do
        sign_in_and_play

        click_button "rock"
        expect(page).to have_content "Congratulations, you have won"
        expect(page).to_not have_content "Sorry you have lost"
        expect(page).to_not have_content "It is a draw"
    end
end
