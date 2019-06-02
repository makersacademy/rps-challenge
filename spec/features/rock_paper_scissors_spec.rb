feature 'RockPaperScissors' do
  feature 'entering name' do
    scenario 'can enter name and view it on the next page' do
      sign_in_single_player
      expect(page).to have_content('Player 1: Filbert')
    end

    scenario "computer player's name is displayed on the next page" do
      sign_in_single_player
      expect(page).to have_content('Player 2: Computer')
    end
  end
  
  feature 'choosing a move' do
    scenario 'real player can choose a move and be told that they won' do
      srand(12345)
      sign_in_single_player
      click_button('Scissors')
      expect(page).to have_content('Filbert won!')
    end
  end
end