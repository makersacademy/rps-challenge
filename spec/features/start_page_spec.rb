feature 'user chooses set up for the game' do
  before do 
    visit('/')
  end

  scenario 'home page welcomes you to the game' do 
    expect(page).to have_content "Let's play Rock Paper Scissors!"
  end

  feature 'user chooses player mode' do
    scenario 'user can choose one player mode' do
      expect(page).to have_selector(:link_or_button, 'one player')
    end

    scenario 'user can choose two player mode' do
      expect(page).to have_selector(:link_or_button, 'two player')
    end
  end

  feature 'user completes set up for one player' do
    before do
      click_button('one player')
    end

    scenario 'home page has a Player 1 box' do
      expect(page.has_field?('player1')).to be_truthy
    end

    scenario 'user will see their name on screen after set up' do
      sign_in
      expect(page).to have_content 'Patos'
    end
  end

  feature 'user completes set up for two player' do
    before do
      click_button('two player')
    end

    scenario 'home page has a Player 1 box' do
      expect(page.has_field?('player1')).to be_truthy
    end

    scenario 'home page has a Player 2 box' do
      expect(page.has_field?('player2')).to be_truthy
    end

    feature 'players fill in their names for the game' do
      before do
        two_player_sign_in
      end

      scenario 'player1 will see their name on screen after set up' do
        expect(page).to have_content 'Patos'
      end

      scenario 'player2 will see their name on screen after set up' do
        expect(page).to have_content 'Quackers'
      end
    end
  end
end
