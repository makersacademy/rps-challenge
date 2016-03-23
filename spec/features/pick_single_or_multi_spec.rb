feature '#pick single or multiplayer' do
    scenario '>pick single player' do
      visit ('/')
      click_button 'Single Player'
      expect(page).to have_content("Welcome to Rock, Paper, Scissors World, Single Player")
    end

    scenario '>pick multi-player' do
      visit ('/')
      click_button 'Multi-Player'
      expect(page).to have_content("Welcome to Rock, Paper, Scissors World, Multi-Player")
    end
  end
