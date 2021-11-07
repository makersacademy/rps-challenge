describe RpsGame do
  feature '#Testing sign-in page' do
    scenario '#Asks users to enter a name' do
      visit('/')
      expect(page).to have_content 'Please enter your name here'
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

    scenario '#Displays the player whose turn it is' do
      sign_in_and_play_mult
      expect(page).to have_content 'Red, please make your choice'
      click_button("0")
      expect(page).to have_content 'Blue, please make your choice'
    end
  end

  feature '#Testing results page' do
    scenario '#Declares player 1 to be the winner for player 1: rock and player 2: scissors' do
      sign_in_and_play_mult
      click_buttons(0, 2)
      expect(page).to have_content 'Red wins!'
    end

    scenario '#Declares a draw if both players pick the same implement' do
      sign_in_and_play_mult
      click_buttons
      expect(page).to have_content "It's a draw!"
    end

    scenario '#Displays choices' do
      sign_in_and_play_mult
      click_buttons
      expect(page).to have_content "Red chose Golem"
      expect(page).to have_content "Blue chose Golem"
    end

    def click_buttons(n = 0, m = 0)
      click_button(n)
      click_button(m)
    end
  end
end
