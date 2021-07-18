feature 'can connect to homepage' do
    scenario 'Connection works' do
      visit('/')
      expect(page).to have_content 'Welcome to Rock-Paper-scissors!'
    end
   end
   