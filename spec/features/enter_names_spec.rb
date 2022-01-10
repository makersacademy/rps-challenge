feature 'Enter names' do
  feature 'in GameBot mode' do
    scenario 'player can have entered name displayed' do
      gamebot_bob_play
      expect(page).to have_content "Hello, Bob!"
    end
  end

  feature 'in Humans mode' do
    scenario 'player 1 can have entered name displayed' do
      human_bob_babs_play
      expect(page).to have_content "Hello, Bob!"
    end

    scenario 'player 2 can have entered name displayed' do
      human_bob_babs_play
      click_button "ROCK"
      expect(page).to have_content "Hello, Babs!"
    end
  end
end