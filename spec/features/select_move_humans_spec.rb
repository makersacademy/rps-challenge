feature 'Select move' do 
  feature 'in Humans mode' do 
    scenario 'player 2 selects rock and it is confirmed' do 
      human_bob_babs_play
      click_button "ROCK"
      click_button "ROCK"
      expect(page).to have_content "Babs picked: ROCK"
    end

    scenario 'player 2 selects paper and it is confirmed' do 
      human_bob_babs_play
      click_button "ROCK"
      click_button "PAPER"
      expect(page).to have_content "Babs picked: PAPER"
    end

    scenario 'player 2 selects scissors and it is confirmed' do 
      human_bob_babs_play
      click_button "ROCK"
      click_button "SCISSORS"
      expect(page).to have_content "Babs picked: SCISSORS"
    end

    scenario 'player 2 selects lizard and it is confirmed' do 
      human_bob_babs_play
      click_button "ROCK"
      click_button "LIZARD"
      expect(page).to have_content "Babs picked: LIZARD"
    end

    scenario 'player 2 selects spock and it is confirmed' do 
      human_bob_babs_play
      click_button "ROCK"
      click_button "SPOCK"
      expect(page).to have_content "Babs picked: SPOCK"
    end
  end
end