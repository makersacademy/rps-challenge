feature 'Player can choose rock, paper, or scissors' do
    scenario 'player chooses rock' do
        visit('/')
        fill_in :player, with: 'Zish'
        click_button "Submit"

        click_button "Rock"
        expect(page).to have_content "Congratulations, you have won"
        expect(page).to_not have_content "Sorry you have lost"
        expect(page).to_not have_content "It's a draw"
    end
end
