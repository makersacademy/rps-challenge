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
    scenario 'real player can choose a move and be told whether they won' do
      sign_in_single_player
      click_button('Paper')
      expect(page).to have_content('Filbert won!').or have_content('Computer won!').or have_content('It was a draw!')
    end
    scenario 'real player can choose the winning move and be told that they won, with fixed seed' do
      sign_in_single_player
      srand(12345)
      click_button('Rock')
      expect(page).to have_content('Filbert won!')
    end
    scenario 'real player can choose the drawing move and be told that they drew, with fixed seed' do
      sign_in_single_player
      srand(12345)
      click_button('Scissors')
      expect(page).to have_content('It was a draw!')
    end
    scenario 'real player can choose the drawing move and be told that they drew, with fixed seed' do
      sign_in_single_player
      srand(12345)
      click_button('Paper')
      expect(page).to have_content('Computer won!')
    end

  end
end