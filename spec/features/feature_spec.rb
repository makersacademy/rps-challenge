feature 'playing rock paper scissors' do

  feature 'multiplayer' do
    
    scenario 'Home page shows both play options' do
      visit('/')
      expect(page).to have_button 'multiplayer'
      expect(page).to have_button 'single player'
    end

  end

  feature 'entering player names' do

    scenario 'single player' do
      single_player_start
      expect(page).to have_content 'Ainsley'
    end
    scenario 'multiplayer' do
      multiplayer_start
      expect(page).to have_content 'Ainsley'
    end

  end

  feature 'choosing a weapon' do

    before { single_player_start }

    scenario 'allows rock to be chosen' do
      expect(page).to have_css '#rock-icon'
    end

    scenario 'allows paper to be chosen' do
      expect(page).to have_css '#paper-icon'
    end

    scenario 'allows scissors to be chosen' do
      expect(page).to have_css '#scissors-icon'
    end

  end

  feature 'shows the game result' do

    before { single_player_start }

    scenario 'winning the game' do
      allow(game).to receive(:sample) { :scissors }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'won'
    end

    scenario 'losing the game' do
      allow(Game).to receive(:computer_choice) { :paper }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'lose'
    end

    scenario 'the game is a tie' do
      allow(Game).to receive(:computer_choice) { :rock }
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_content 'tie'
    end

  end

  feature 'player can play again' do

    scenario 'Play again button is visible' do
      find("#rock-icon").click
      click_button "Go!"
      expect(page).to have_button 'Play again'
    end

  end

end
