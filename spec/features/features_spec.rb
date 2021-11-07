describe RpsGame do
  feature '#Testing sign-in page' do
    scenario '#Asks users to enter a name' do
      visit('/')
      expect(page).to have_content 'Please enter your name here'
    end

    scenario 'Prevents sign-in if no Player 1 name is provided' do
      visit('/')
      click_button("Enter")
      expect(page).to have_content 'Please enter a name for Player 1.'
    end
  end

  feature '#Testing game page' do
    scenario '#Includes the name of both players at the top of the page' do
      sign_in_and_play_mult
      expect(page).to have_content 'Red vs. Blue'
    end

    scenario '#Includes the COMPUTER name for single games' do
      sign_in_and_play_single
      expect(page).to have_content 'Red vs. COMPUTER'
    end
  end

  feature '#Testing results page' do
    scenario '#Declares player 1 to be the winner for player 1: rock and player 2: scissors' do
      sign_in_and_play_mult
      click_button("0")
      click_button("2")
      expect(page).to have_content 'Red is the winner!'
    end

    scenario '#Declares a draw if both players pick the same implement' do
      sign_in_and_play_mult
      click_button("0")
      click_button("0")
      expect(page).to have_content "It's a draw!"
    end
  end
end
