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

  # feature '#Testing name display' do
  #   scenario '#Presents the user with a choice between Rock, Paper and Scissors' do

  #   end
  # end
end
