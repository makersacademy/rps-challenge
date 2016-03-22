feature 'Attack Page visualization' do

  feature 'Game Screen:' do

    before :each do
      login_to_game
    end

    scenario 'Page has a counter with the player wins' do
      expect(page).to have_content "#{TEST_PLAYER_NAME} wins: 0"
    end

    scenario 'Page has a counter with the opponent wins' do
      expect(page).to have_content "Bob wins: 0"
    end

    scenario 'Page has a button to pick Paper' do
      expect(page).to have_button 'paper_button'
    end

    scenario 'Page has a button to pick Rock' do
      expect(page).to have_button 'rock_button'
    end

    scenario 'Page has a button to pick Scissors' do
      expect(page).to have_button 'scissors_button'
    end

    scenario 'Page has a button to pick Lizard' do
      expect(page).to have_button 'lizard_button'
    end

    scenario 'Page has a button to pick Spock' do
      expect(page).to have_button 'spock_button'
    end

  end


  feature 'Attack Button:' do

    before :each do
      login_to_game
      click_button 'paper_button'
    end

    scenario 'Player attack is successfully transmitted' do
      expect(page).to have_content "#{TEST_PLAYER_NAME} attacked with: paper"
    end

  end

end
