feature 'Testing infrastructure' do
    scenario 'Can run app and check page content' do
      visit('/')
      expect(page).to have_content 'Welcome to RPS!'
    end
  end

  feature 'Sign in and play' do
    scenario 'Able to sign in and be directed to the game page' do
      sign_in_and_play
      expect(page).to have_content 'Lets play'
    end
  end