describe RpsGame do
  feature '#Testing sign-in page' do
    scenario '#Asks users to enter a name' do
      visit('/')
      expect(page).to have_content 'Please enter and submit your name here'
    end
  end

  feature '#Testing choice page' do
    scenario '#Presents the user with a choice between Rock, Paper and Scissors' do

    end
  end
end
