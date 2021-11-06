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
      sign_in_and_play
      expect(page).to have_content 'Red vs. Blue'
    end
  end
end
