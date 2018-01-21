# require 'pry'

  feature 'Entering player names' do
    scenario 'Player enters name at start and has name displayed against opponent/computer' do
      sign_in_and_play
      expect(page).to have_content("Teddy")
      expect(page).to have_content("Computer")
    end
  end

  feature 'Taking a turn' do
    scenario 'Player is able to select Rock' do
      sign_in_and_play
      expect(page).to have_selector(:link_or_button, 'Rock')
    end

    scenario 'Player is able to select Paper' do
      sign_in_and_play
      expect(page).to have_selector(:link_or_button, 'Paper')
    end

    scenario 'Player is able to select Scissors' do
      sign_in_and_play
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end
  end
