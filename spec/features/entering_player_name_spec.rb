feature 'player enters their name' do
  let(:player_name1) { 'Petra' }
  let(:player_name2) { 'Velma' }

  context 'single player game' do   
    scenario 'player name is displayed' do
      play_solo(player_name1)
      expect(page).to have_content("#{player_name1} vs Machine")
    end
  end

  context 'multiplayer game' do
    scenario 'second player is asked for name' do
      submit_name(player_name1)
      click_button 'Play with a friend'
      expect(page).to have_content("What's the other player's name?")
    end

    scenario 'both players names are displayed' do
      play_multi(player_name1, player_name2)
      expect(page).to have_content("#{player_name1} vs #{player_name2}")
    end
  end
end
