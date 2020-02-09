feature 'Pick Rock, Paper or Scissors' do
    before(:each) do
        sign_in_and_play
    end
    scenario 'Picks Rock' do
        click_button("Rock")
        expect(page).to have_content("You picked Rock!")
    end
    scenario 'Picks Paper' do
        click_button("Paper")
        expect(page).to have_content("You picked Paper!")
    end
    scenario 'Picks Scissors' do
        click_button("Scissors")
        expect(page).to have_content("You picked Scissors!")
    end
end