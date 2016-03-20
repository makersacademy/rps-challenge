RSpec.feature 'winner_page: Shows winner or draw' do

  before do
    singlemode
    allow(Kernel).to receive(:rand).and_return(1)
    click_button("Rock")
  end

    scenario '1. singlemode: should have player1s choice' do
      expect(page).to have_content("player1's choice: Rock")
    end

    scenario '2. singlemode: should have computers choice' do
      expect(page).to have_content("Computer\'s choice: Paper")
    end

    scenario '3. singlemode: should have who wins' do
      expect(page).to have_content("Computer wins!")
    end

    scenario '4. should have play again button' do
      expect(page).to have_button("Play again?")
    end

    scenario '5. play again button should go to play page' do
      click_button("Play again?")
      expect(page).to have_content("Pick your weapon player1:")
    end

    scenario '6. should have home button' do
      expect(page).to have_button("Home")
    end

    scenario '7. New player button should go to index page' do
      click_button("Home")
      expect(page).to have_content("Lets play Rock, Paper, Scissors!")
    end

end
