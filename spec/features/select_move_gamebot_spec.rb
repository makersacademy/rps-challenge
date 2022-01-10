feature 'Select move' do 
  feature 'in GameBot mode' do
    scenario 'player selects rock and it is confirmed' do 
      gamebot_bob_play
      click_button "ROCK"
      expect(page).to have_content "Bob picked: ROCK"
    end

    scenario 'player selects paper and it is confirmed' do 
      gamebot_bob_play
      click_button "PAPER"
      expect(page).to have_content "Bob picked: PAPER"
    end

    scenario 'player selects scissors and it is confirmed' do 
      gamebot_bob_play
      click_button "SCISSORS"
      expect(page).to have_content "Bob picked: SCISSORS"
    end

    scenario 'player selects lizard and it is confirmed' do 
      gamebot_bob_play
      click_button "LIZARD"
      expect(page).to have_content "Bob picked: LIZARD"
    end

    scenario 'player selects spock and it is confirmed' do 
      gamebot_bob_play
      click_button "SPOCK"
      expect(page).to have_content "Bob picked: SPOCK"
    end
  end
end